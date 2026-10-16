//
//  Localization.swift
//  NoBsImposter
//
//  Thin facade over the per-language `LanguageStrings` types. Views keep using
//  `Localization` exactly as before; it just forwards each value to the strings
//  for the current language. To add a language, add a case to `AppLanguage`,
//  create its `LanguageStrings` type (see e.g. `Spanish.swift`), and add one
//  line to the switch below.
//

import Foundation

struct Localization {
    let language: AppLanguage

    private var s: LanguageStrings {
        switch language {
        case .german: GermanStrings()
        case .english: EnglishStrings()
        case .spanish: SpanishStrings()
        case .french: FrenchStrings()
        case .italian: ItalianStrings()
        case .portuguese: PortugueseStrings()
        case .japanese: JapaneseStrings()
        case .korean: KoreanStrings()
        case .chinese: ChineseStrings()
        case .russian: RussianStrings()
        }
    }

    // MARK: General
    var appTitle: String { "No BS Imposter" }
    var tagline: String { s.tagline }

    // MARK: How to play
    var howToPlay: String { s.howToPlay }
    var howToPlayIntro: String { s.howToPlayIntro }
    var howToPlaySteps: [String] { s.howToPlaySteps }
    var howToPlayTip: String { s.howToPlayTip }

    // MARK: Setup
    var players: String { s.players }
    var imposters: String { s.imposters }
    var categories: String { s.categories }
    var names: String { s.names }
    var namesHint: String { s.namesHint }
    var all: String { s.all }
    var none: String { s.none }
    var startGame: String { s.startGame }
    var selectAtLeastOneCategory: String { s.selectAtLeastOneCategory }
    var imposterKnowsCategoryLabel: String { s.imposterKnowsCategoryLabel }
    var keepScreenOnLabel: String { s.keepScreenOnLabel }
    var allCategories: String { s.allCategories }
    func categoriesSummary(selected: Int, of total: Int) -> String {
        s.categoriesSummary(selected: selected, of: total)
    }

    // MARK: Cancel
    var cancel: String { s.cancel }
    var quitGameTitle: String { s.quitGameTitle }
    var quitGameMessage: String { s.quitGameMessage }

    // MARK: Reveal
    var tapToReveal: String { s.tapToReveal }
    var holdToReveal: String { s.holdToReveal }
    var next: String { s.next }
    var done: String { s.done }
    var youAreImposter: String { s.youAreImposter }
    var imposterHint: String { s.imposterHint }
    var imposterHintNoCategory: String { s.imposterHintNoCategory }
    var categoryLabel: String { s.categoryLabel }
    var passDevicePrefix: String { s.passDevicePrefix }
    func passDeviceTo(name: String) -> String { s.passDeviceTo(name: name) }
    func playerTitle(_ n: Int) -> String { s.playerTitle(n) }

    // MARK: Summary
    var everyoneReady: String { s.everyoneReady }
    var discussHint: String { s.discussHint }
    var startingPlayer: String { s.startingPlayer }
    var startsDescribing: String { s.startsDescribing }
    var newRound: String { s.newRound }
    var backToMenu: String { s.backToMenu }
    var revealSolution: String { s.revealSolution }
    var revealSolutionTitle: String { s.revealSolutionTitle }
    var revealSolutionMessage: String { s.revealSolutionMessage }
    var theWordWas: String { s.theWordWas }
    func imposterCountAmongYou(_ count: Int) -> String { s.imposterCountAmongYou(count) }
    func imposterWasLabel(count: Int) -> String { s.imposterWasLabel(count: count) }
}
