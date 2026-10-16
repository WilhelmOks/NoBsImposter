//
//  Localization.swift
//  NoBsImposter
//
//  All user-facing text lives here so adding a language is a single, local change.
//

import Foundation

struct Localization {
    let language: AppLanguage

    // MARK: General
    var appTitle: String { "No BS Imposter" }
    var tagline: String { de("Finde den Verräter", "Find the traitor") }

    // MARK: How to play
    var howToPlay: String { de("So wird gespielt", "How to Play") }
    var howToPlayIntro: String {
        de("Imposter ist ein Partyspiel für 3–12 Spieler, die sich ein einziges Gerät teilen.",
           "Imposter is a pass-and-play party game for 3–12 players sharing a single device.")
    }
    var howToPlaySteps: [String] {
        switch language {
        case .german:
            [
                "Runde einrichten: Lege die Spielerzahl und die Anzahl der Imposter fest, wähle Kategorien und benenne optional die Spieler.",
                "Gerät herumreichen: Jeder Spieler hält die Karte gedrückt, um sein geheimes Wort zu sehen. Ein oder mehrere Imposter bekommen das Wort nicht.",
                "Hinweise geben: Beginnend mit dem angezeigten Startspieler sagt reihum jeder einen kurzen Hinweis zum Wort – ohne es direkt zu nennen.",
                "Diskutieren und abstimmen: Beratet euch und stimmt gemeinsam ab, wer der Imposter ist.",
                "Auflösen: Tippe auf „Auflösung anzeigen“, um das Wort und die Imposter zu enthüllen.",
            ]
        case .english:
            [
                "Set up the round: Choose how many players and imposters, pick your categories, and optionally name the players.",
                "Pass the device around: Each player holds the card to privately see their secret word. One or more imposters don't get the word.",
                "Give clues: Starting with the shown starting player, everyone says one short clue about the word — without saying it outright.",
                "Discuss and vote: Talk it over and vote together on who the imposter is.",
                "Reveal: Tap \"Reveal Solution\" to unveil the word and the imposters.",
            ]
        }
    }
    var howToPlayTip: String {
        de("Der Imposter gewinnt, wenn er unentdeckt bleibt – oder das geheime Wort errät. Alle anderen gewinnen, wenn sie den Imposter enttarnen.",
           "The imposter wins by staying hidden — or by guessing the secret word. Everyone else wins by unmasking the imposter.")
    }

    // MARK: Setup
    var players: String { de("Spieler", "Players") }
    var imposters: String { de("Imposter", "Imposters") }
    var categories: String { de("Kategorien", "Categories") }
    var names: String { de("Namen", "Names") }
    var namesHint: String {
        de("Optional – leer lassen für „Spieler 1“, „Spieler 2“ …",
           "Optional — leave empty for \"Player 1\", \"Player 2\" …")
    }
    var all: String { de("Alle", "All") }
    var none: String { de("Keine", "None") }
    var startGame: String { de("Spiel starten", "Start Game") }
    var selectAtLeastOneCategory: String {
        de("Wähle mindestens eine Kategorie", "Pick at least one category")
    }
    var imposterKnowsCategoryLabel: String {
        de("Imposter kennt Kategorie", "Imposter knows category")
    }
    var keepScreenOnLabel: String {
        de("Bildschirm anlassen", "Keep screen on")
    }
    var allCategories: String { de("Alle Kategorien", "All categories") }
    func categoriesSummary(selected: Int, of total: Int) -> String {
        de("\(selected) von \(total)", "\(selected) of \(total)")
    }

    // MARK: Cancel
    var cancel: String { de("Abbrechen", "Cancel") }
    var quitGameTitle: String { de("Spiel abbrechen?", "Quit game?") }
    var quitGameMessage: String {
        de("Die aktuelle Runde geht verloren.", "The current round will be lost.")
    }

    // MARK: Reveal
    var tapToReveal: String { de("Tippen zum Aufdecken", "Tap to reveal") }
    var holdToReveal: String { de("Gedrückt halten zum Aufdecken", "Hold to reveal") }
    var next: String { de("Weiter", "Next") }
    var done: String { de("Fertig", "Done") }
    var youAreImposter: String { de("Du bist der Imposter!", "You are the Imposter!") }
    var imposterHint: String {
        de("Du kennst nur die Kategorie. Finde heraus, welches Wort die anderen haben – und lass dir nichts anmerken.",
           "You only know the category. Figure out the others' word — and don't blow your cover.")
    }
    var imposterHintNoCategory: String {
        de("Finde heraus, welches Wort die anderen haben – und lass dir nichts anmerken.",
           "Figure out the others' word — and don't blow your cover.")
    }
    var categoryLabel: String { de("Kategorie", "Category") }

    /// The part of the pass-the-device sentence before the player's name, so
    /// the view can style the name separately.
    var passDevicePrefix: String {
        de("Gib das Gerät an ", "Pass the device to ")
    }

    func passDeviceTo(name: String) -> String {
        de("Gib das Gerät an \(name)", "Pass the device to \(name)")
    }
    func playerTitle(_ n: Int) -> String {
        de("Spieler \(n)", "Player \(n)")
    }

    // MARK: Summary
    var everyoneReady: String { de("Alle bereit!", "Everyone's ready!") }
    var discussHint: String {
        de("Beschreibt reihum euer Wort und stimmt dann ab, wer der Imposter ist.",
           "Take turns describing your word, then vote on who the Imposter is.")
    }
    var startingPlayer: String { de("Startspieler", "Starting player") }
    var startsDescribing: String {
        de("beginnt mit dem Beschreiben", "starts the describing")
    }
    var newRound: String { de("Neue Runde", "New Round") }
    var backToMenu: String { de("Zurück zum Menü", "Back to Menu") }
    var revealSolution: String { de("Auflösung anzeigen", "Reveal Solution") }
    var revealSolutionTitle: String { de("Auflösung anzeigen?", "Reveal solution?") }
    var revealSolutionMessage: String {
        de("Das Wort und die Imposter werden angezeigt.",
           "The word and the imposters will be shown.")
    }
    var theWordWas: String { de("Das Wort war", "The word was") }

    func imposterCountAmongYou(_ count: Int) -> String {
        count == 1
            ? de("1 Imposter ist unter euch", "1 Imposter is among you")
            : de("\(count) Imposter sind unter euch", "\(count) Imposters are among you")
    }
    func imposterWasLabel(count: Int) -> String {
        count == 1
            ? de("Der Imposter war", "The Imposter was")
            : de("Die Imposter waren", "The Imposters were")
    }

    // MARK: Helper
    private func de(_ german: String, _ english: String) -> String {
        switch language {
        case .german: german
        case .english: english
        }
    }
}
