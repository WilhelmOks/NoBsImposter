//
//  GameModel.swift
//  NoBsImposter
//

import Foundation
import Observation

/// The role a player holds in the current round.
enum PlayerRole {
    /// A regular player who knows the secret word (and its category).
    case regular(word: String, category: String)
    /// The imposter. Learns the category only when the game is configured to
    /// reveal it; otherwise `category` is nil.
    case imposter(category: String?)
}

/// A single dealt round: the chosen category, the secret word and which
/// player indices (0-based) are the imposters.
struct Round {
    let category: WordCategory
    let word: String
    let imposterIndices: Set<Int>
    /// The player (0-based) chosen at random to describe their word first.
    let startingPlayerIndex: Int
    /// The order in which players reveal their card. Starts at a random player
    /// (and wraps around in seating order) so the pass doesn't always begin
    /// with player 1.
    let revealOrder: [Int]
}

@Observable
final class GameModel {
    static let maxPlayers = 12

    var language: AppLanguage = .english {
        didSet {
            syncSelectionWithAvailableCategories()
            persist()
        }
    }

    var playerCount: Int = 3 {
        didSet {
            if imposterCount > maxImposters { imposterCount = maxImposters }
            persist()
        }
    }

    var imposterCount: Int = 1 {
        didSet { persist() }
    }

    /// Whether the imposter is told the category (but never the word).
    var imposterKnowsCategory: Bool = true {
        didSet { persist() }
    }

    /// Whether the screen is kept awake (auto-lock/dimming disabled) during play.
    var keepScreenOn: Bool = true {
        didSet { persist() }
    }

    var selectedCategoryIDs: Set<String> = [] {
        didSet { persist() }
    }

    /// Custom player names, one slot per possible player. An empty slot falls
    /// back to the localized "Player N".
    var playerNames: [String] = Array(repeating: "", count: GameModel.maxPlayers) {
        didSet { persist() }
    }

    private(set) var round: Round?

    /// Guards persistence so loading saved values in `init` doesn't re-save.
    private var isLoaded = false

    init() {
        load()
        isLoaded = true
    }

    // MARK: Derived state

    var strings: Localization { Localization(language: language) }

    var availableCategories: [WordCategory] {
        WordData.categories(for: language)
    }

    var selectedCategories: [WordCategory] {
        availableCategories.filter { selectedCategoryIDs.contains($0.id) }
    }

    let playerRange = 3...12
    var maxImposters: Int { max(1, playerCount - 1) }

    var canStart: Bool {
        !selectedCategories.isEmpty
    }

    var allCategoriesSelected: Bool {
        selectedCategoryIDs.count == availableCategories.count
    }

    /// The name to show for a player, falling back to "Player N" when unset.
    func displayName(for index: Int) -> String {
        guard index >= 0, index < playerNames.count else {
            return strings.playerTitle(index + 1)
        }
        let trimmed = playerNames[index].trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.isEmpty ? strings.playerTitle(index + 1) : trimmed
    }

    // MARK: Category selection

    func toggleCategory(_ id: String) {
        if selectedCategoryIDs.contains(id) {
            selectedCategoryIDs.remove(id)
        } else {
            selectedCategoryIDs.insert(id)
        }
    }

    func selectAllCategories() {
        selectedCategoryIDs = Set(availableCategories.map(\.id))
    }

    func deselectAllCategories() {
        selectedCategoryIDs.removeAll()
    }

    // MARK: Round lifecycle

    func startRound() {
        guard let category = selectedCategories.randomElement(),
              let word = category.words.randomElement() else { return }
        let imposters = min(max(1, imposterCount), playerCount - 1)
        let indices = Set(Array(0..<playerCount).shuffled().prefix(imposters))
        let starting = Int.random(in: 0..<playerCount)
        let revealStart = Int.random(in: 0..<playerCount)
        let order = (0..<playerCount).map { (revealStart + $0) % playerCount }
        round = Round(category: category,
                      word: word,
                      imposterIndices: indices,
                      startingPlayerIndex: starting,
                      revealOrder: order)
    }

    func role(for playerIndex: Int) -> PlayerRole {
        guard let round else { return .regular(word: "", category: "") }
        if round.imposterIndices.contains(playerIndex) {
            return .imposter(category: imposterKnowsCategory ? round.category.name : nil)
        }
        return .regular(word: round.word, category: round.category.name)
    }

    // MARK: Helpers

    private func syncSelectionWithAvailableCategories() {
        // Category IDs are identical across languages, so selection carries over.
        let available = Set(availableCategories.map(\.id))
        selectedCategoryIDs.formIntersection(available)
        if selectedCategoryIDs.isEmpty {
            selectedCategoryIDs = available
        }
    }

    // MARK: Persistence (UserDefaults)

    private enum Key {
        static let language = "imposter.language"
        static let playerCount = "imposter.playerCount"
        static let imposterCount = "imposter.imposterCount"
        static let selectedCategories = "imposter.selectedCategoryIDs"
        static let playerNames = "imposter.playerNames"
        static let imposterKnowsCategory = "imposter.imposterKnowsCategory"
        static let keepScreenOn = "imposter.keepScreenOn"
    }

    private func persist() {
        guard isLoaded else { return }
        let d = UserDefaults.standard
        d.set(language.rawValue, forKey: Key.language)
        d.set(playerCount, forKey: Key.playerCount)
        d.set(imposterCount, forKey: Key.imposterCount)
        d.set(Array(selectedCategoryIDs), forKey: Key.selectedCategories)
        d.set(playerNames, forKey: Key.playerNames)
        d.set(imposterKnowsCategory, forKey: Key.imposterKnowsCategory)
        d.set(keepScreenOn, forKey: Key.keepScreenOn)
    }

    private func load() {
        let d = UserDefaults.standard

        if let raw = d.string(forKey: Key.language), let lang = AppLanguage(rawValue: raw) {
            language = lang
        }
        if d.object(forKey: Key.playerCount) != nil {
            playerCount = min(max(playerRange.lowerBound, d.integer(forKey: Key.playerCount)),
                              playerRange.upperBound)
        }
        if d.object(forKey: Key.imposterCount) != nil {
            imposterCount = max(1, d.integer(forKey: Key.imposterCount))
        }
        if d.object(forKey: Key.imposterKnowsCategory) != nil {
            imposterKnowsCategory = d.bool(forKey: Key.imposterKnowsCategory)
        }
        if d.object(forKey: Key.keepScreenOn) != nil {
            keepScreenOn = d.bool(forKey: Key.keepScreenOn)
        }
        if let names = d.stringArray(forKey: Key.playerNames) {
            playerNames = Self.normalizedNames(names)
        }
        if let saved = d.stringArray(forKey: Key.selectedCategories) {
            selectedCategoryIDs = Set(saved)
        } else {
            selectedCategoryIDs = Set(availableCategories.map(\.id))
        }

        // Keep loaded values internally consistent.
        if imposterCount > maxImposters { imposterCount = maxImposters }
        syncSelectionWithAvailableCategories()
    }

    /// Pads or trims a saved name list to exactly `maxPlayers` slots.
    private static func normalizedNames(_ names: [String]) -> [String] {
        if names.count < maxPlayers {
            return names + Array(repeating: "", count: maxPlayers - names.count)
        } else if names.count > maxPlayers {
            return Array(names.prefix(maxPlayers))
        }
        return names
    }
}
