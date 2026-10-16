//
//  AppLanguage.swift
//  NoBsImposter
//

import Foundation

/// The languages the app supports. German is the primary language; the whole
/// app is structured so additional languages only need new cases here plus
/// matching entries in `Localization` and `WordData`.
enum AppLanguage: String, CaseIterable, Identifiable, Codable {
    case german = "de"
    case english = "en"

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .german: "Deutsch"
        case .english: "English"
        }
    }

    var flag: String {
        switch self {
        case .german: "🇩🇪"
        case .english: "🇬🇧"
        }
    }
}
