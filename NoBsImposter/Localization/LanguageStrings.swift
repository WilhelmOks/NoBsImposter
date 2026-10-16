//
//  LanguageStrings.swift
//  NoBsImposter
//
//  Every user-facing string the app shows, declared once as a protocol. Each
//  language provides a conforming type (e.g. `EnglishStrings`, `SpanishStrings`)
//  in its own file, so adding a language is a single new file with no edits to
//  shared code.
//
//  The protocol extension below supplies English as the default for every
//  member, so a brand-new language file can start as `struct XxxStrings:
//  LanguageStrings {}` and still compile and run (falling back to English)
//  while its translations are filled in.
//

import Foundation

protocol LanguageStrings {
    // MARK: General
    var tagline: String { get }

    // MARK: How to play
    var howToPlay: String { get }
    var howToPlayIntro: String { get }
    var howToPlaySteps: [String] { get }
    var howToPlayTip: String { get }

    // MARK: Setup
    var players: String { get }
    var imposters: String { get }
    var categories: String { get }
    var names: String { get }
    var namesHint: String { get }
    var all: String { get }
    var none: String { get }
    var startGame: String { get }
    var selectAtLeastOneCategory: String { get }
    var imposterKnowsCategoryLabel: String { get }
    var keepScreenOnLabel: String { get }
    var allCategories: String { get }
    func categoriesSummary(selected: Int, of total: Int) -> String

    // MARK: Cancel
    var cancel: String { get }
    var quitGameTitle: String { get }
    var quitGameMessage: String { get }

    // MARK: Reveal
    var tapToReveal: String { get }
    var holdToReveal: String { get }
    var next: String { get }
    var done: String { get }
    var youAreImposter: String { get }
    var imposterHint: String { get }
    var imposterHintNoCategory: String { get }
    var categoryLabel: String { get }
    /// The part of the pass-the-device sentence before the player's name, so
    /// the view can style the name separately.
    var passDevicePrefix: String { get }
    func passDeviceTo(name: String) -> String
    func playerTitle(_ n: Int) -> String

    // MARK: Summary
    var everyoneReady: String { get }
    var discussHint: String { get }
    var startingPlayer: String { get }
    var startsDescribing: String { get }
    var newRound: String { get }
    var backToMenu: String { get }
    var revealSolution: String { get }
    var revealSolutionTitle: String { get }
    var revealSolutionMessage: String { get }
    var theWordWas: String { get }
    func imposterCountAmongYou(_ count: Int) -> String
    func imposterWasLabel(count: Int) -> String
}

// MARK: - English fallback defaults
//
// Any member a language hasn't translated yet falls back to English. This keeps
// the app functional (never blank) while translations are in progress.

extension LanguageStrings {
    private var en: EnglishStrings { EnglishStrings() }

    var tagline: String { en.tagline }
    var howToPlay: String { en.howToPlay }
    var howToPlayIntro: String { en.howToPlayIntro }
    var howToPlaySteps: [String] { en.howToPlaySteps }
    var howToPlayTip: String { en.howToPlayTip }
    var players: String { en.players }
    var imposters: String { en.imposters }
    var categories: String { en.categories }
    var names: String { en.names }
    var namesHint: String { en.namesHint }
    var all: String { en.all }
    var none: String { en.none }
    var startGame: String { en.startGame }
    var selectAtLeastOneCategory: String { en.selectAtLeastOneCategory }
    var imposterKnowsCategoryLabel: String { en.imposterKnowsCategoryLabel }
    var keepScreenOnLabel: String { en.keepScreenOnLabel }
    var allCategories: String { en.allCategories }
    func categoriesSummary(selected: Int, of total: Int) -> String {
        en.categoriesSummary(selected: selected, of: total)
    }
    var cancel: String { en.cancel }
    var quitGameTitle: String { en.quitGameTitle }
    var quitGameMessage: String { en.quitGameMessage }
    var tapToReveal: String { en.tapToReveal }
    var holdToReveal: String { en.holdToReveal }
    var next: String { en.next }
    var done: String { en.done }
    var youAreImposter: String { en.youAreImposter }
    var imposterHint: String { en.imposterHint }
    var imposterHintNoCategory: String { en.imposterHintNoCategory }
    var categoryLabel: String { en.categoryLabel }
    var passDevicePrefix: String { en.passDevicePrefix }
    func passDeviceTo(name: String) -> String { en.passDeviceTo(name: name) }
    func playerTitle(_ n: Int) -> String { en.playerTitle(n) }
    var everyoneReady: String { en.everyoneReady }
    var discussHint: String { en.discussHint }
    var startingPlayer: String { en.startingPlayer }
    var startsDescribing: String { en.startsDescribing }
    var newRound: String { en.newRound }
    var backToMenu: String { en.backToMenu }
    var revealSolution: String { en.revealSolution }
    var revealSolutionTitle: String { en.revealSolutionTitle }
    var revealSolutionMessage: String { en.revealSolutionMessage }
    var theWordWas: String { en.theWordWas }
    func imposterCountAmongYou(_ count: Int) -> String { en.imposterCountAmongYou(count) }
    func imposterWasLabel(count: Int) -> String { en.imposterWasLabel(count: count) }
}
