//
//  GermanStrings.swift
//  NoBsImposter
//
//  German (de) — the app's original primary language.
//

import Foundation

struct GermanStrings: LanguageStrings {
    // MARK: General
    var tagline: String { "Finde den Verräter" }

    // MARK: How to play
    var howToPlay: String { "So wird gespielt" }
    var howToPlayIntro: String {
        "Imposter ist ein Partyspiel für 3–12 Spieler, die sich ein einziges Gerät teilen."
    }
    var howToPlaySteps: [String] {
        [
            "Runde einrichten: Lege die Spielerzahl und die Anzahl der Imposter fest, wähle Kategorien und benenne optional die Spieler.",
            "Gerät herumreichen: Jeder Spieler hält die Karte gedrückt, um sein geheimes Wort zu sehen. Ein oder mehrere Imposter bekommen das Wort nicht.",
            "Hinweise geben: Beginnend mit dem angezeigten Startspieler sagt reihum jeder einen kurzen Hinweis zum Wort – ohne es direkt zu nennen.",
            "Diskutieren und abstimmen: Beratet euch und stimmt gemeinsam ab, wer der Imposter ist.",
            "Auflösen: Tippe auf „Auflösung anzeigen“, um das Wort und die Imposter zu enthüllen.",
        ]
    }
    var howToPlayTip: String {
        "Der Imposter gewinnt, wenn er unentdeckt bleibt – oder das geheime Wort errät. Alle anderen gewinnen, wenn sie den Imposter enttarnen."
    }

    // MARK: Setup
    var players: String { "Spieler" }
    var imposters: String { "Imposter" }
    var categories: String { "Kategorien" }
    var names: String { "Namen" }
    var namesHint: String { "Optional – leer lassen für „Spieler 1“, „Spieler 2“ …" }
    var all: String { "Alle" }
    var none: String { "Keine" }
    var startGame: String { "Spiel starten" }
    var selectAtLeastOneCategory: String { "Wähle mindestens eine Kategorie" }
    var imposterKnowsCategoryLabel: String { "Imposter kennt Kategorie" }
    var keepScreenOnLabel: String { "Bildschirm anlassen" }
    var allCategories: String { "Alle Kategorien" }
    func categoriesSummary(selected: Int, of total: Int) -> String { "\(selected) von \(total)" }

    // MARK: Cancel
    var cancel: String { "Abbrechen" }
    var quitGameTitle: String { "Spiel abbrechen?" }
    var quitGameMessage: String { "Die aktuelle Runde geht verloren." }

    // MARK: Reveal
    var tapToReveal: String { "Tippen zum Aufdecken" }
    var holdToReveal: String { "Gedrückt halten zum Aufdecken" }
    var next: String { "Weiter" }
    var done: String { "Fertig" }
    var youAreImposter: String { "Du bist der Imposter!" }
    var imposterHint: String {
        "Du kennst nur die Kategorie. Finde heraus, welches Wort die anderen haben – und lass dir nichts anmerken."
    }
    var imposterHintNoCategory: String {
        "Finde heraus, welches Wort die anderen haben – und lass dir nichts anmerken."
    }
    var categoryLabel: String { "Kategorie" }
    var passDevicePrefix: String { "Gib das Gerät an " }
    func passDeviceTo(name: String) -> String { "Gib das Gerät an \(name)" }
    func playerTitle(_ n: Int) -> String { "Spieler \(n)" }

    // MARK: Summary
    var everyoneReady: String { "Alle bereit!" }
    var discussHint: String {
        "Beschreibt reihum euer Wort und stimmt dann ab, wer der Imposter ist."
    }
    var startingPlayer: String { "Startspieler" }
    var startsDescribing: String { "beginnt mit dem Beschreiben" }
    var newRound: String { "Neue Runde" }
    var backToMenu: String { "Zurück zum Menü" }
    var revealSolution: String { "Auflösung anzeigen" }
    var revealSolutionTitle: String { "Auflösung anzeigen?" }
    var revealSolutionMessage: String { "Das Wort und die Imposter werden angezeigt." }
    var theWordWas: String { "Das Wort war" }
    func imposterCountAmongYou(_ count: Int) -> String {
        count == 1 ? "1 Imposter ist unter euch" : "\(count) Imposter sind unter euch"
    }
    func imposterWasLabel(count: Int) -> String {
        count == 1 ? "Der Imposter war" : "Die Imposter waren"
    }
}
