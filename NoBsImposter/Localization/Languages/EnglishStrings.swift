//
//  EnglishStrings.swift
//  NoBsImposter
//
//  English (en) — also the fallback language used by `LanguageStrings` defaults,
//  so this type must implement every member explicitly.
//

import Foundation

struct EnglishStrings: LanguageStrings {
    // MARK: General
    var tagline: String { "Find the traitor" }

    // MARK: How to play
    var howToPlay: String { "How to Play" }
    var howToPlayIntro: String {
        "Imposter is a pass-and-play party game for 3–12 players sharing a single device."
    }
    var howToPlaySteps: [String] {
        [
            "Set up the round: Choose how many players and imposters, pick your categories, and optionally name the players.",
            "Pass the device around: Each player holds the card to privately see their secret word. One or more imposters don't get the word.",
            "Give clues: Starting with the shown starting player, everyone says one short clue about the word — without saying it outright.",
            "Discuss and vote: Talk it over and vote together on who the imposter is.",
            "Reveal: Tap \"Reveal Solution\" to unveil the word and the imposters.",
        ]
    }
    var howToPlayTip: String {
        "The imposter wins by staying hidden — or by guessing the secret word. Everyone else wins by unmasking the imposter."
    }

    // MARK: Setup
    var players: String { "Players" }
    var imposters: String { "Imposters" }
    var categories: String { "Categories" }
    var names: String { "Names" }
    var namesHint: String { "Optional — leave empty for \"Player 1\", \"Player 2\" …" }
    var all: String { "All" }
    var none: String { "None" }
    var startGame: String { "Start Game" }
    var selectAtLeastOneCategory: String { "Pick at least one category" }
    var imposterKnowsCategoryLabel: String { "Imposter knows category" }
    var keepScreenOnLabel: String { "Keep screen on" }
    var allCategories: String { "All categories" }
    func categoriesSummary(selected: Int, of total: Int) -> String { "\(selected) of \(total)" }

    // MARK: Cancel
    var cancel: String { "Cancel" }
    var quitGameTitle: String { "Quit game?" }
    var quitGameMessage: String { "The current round will be lost." }

    // MARK: Reveal
    var tapToReveal: String { "Tap to reveal" }
    var holdToReveal: String { "Hold to reveal" }
    var next: String { "Next" }
    var done: String { "Done" }
    var youAreImposter: String { "You are the Imposter!" }
    var imposterHint: String {
        "You only know the category. Figure out the others' word — and don't blow your cover."
    }
    var imposterHintNoCategory: String {
        "Figure out the others' word — and don't blow your cover."
    }
    var categoryLabel: String { "Category" }
    var passDevicePrefix: String { "Pass the device to " }
    func passDeviceTo(name: String) -> String { "Pass the device to \(name)" }
    func playerTitle(_ n: Int) -> String { "Player \(n)" }

    // MARK: Summary
    var everyoneReady: String { "Everyone's ready!" }
    var discussHint: String {
        "Take turns describing your word, then vote on who the Imposter is."
    }
    var startingPlayer: String { "Starting player" }
    var startsDescribing: String { "starts the describing" }
    var newRound: String { "New Round" }
    var backToMenu: String { "Back to Menu" }
    var revealSolution: String { "Reveal Solution" }
    var revealSolutionTitle: String { "Reveal solution?" }
    var revealSolutionMessage: String { "The word and the imposters will be shown." }
    var theWordWas: String { "The word was" }
    func imposterCountAmongYou(_ count: Int) -> String {
        count == 1 ? "1 Imposter is among you" : "\(count) Imposters are among you"
    }
    func imposterWasLabel(count: Int) -> String {
        count == 1 ? "The Imposter was" : "The Imposters were"
    }
}
