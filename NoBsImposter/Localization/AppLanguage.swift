//
//  AppLanguage.swift
//  NoBsImposter
//

import Foundation

/// The languages the app supports. German is the primary language; the whole
/// app is structured so additional languages only need a new case here plus a
/// matching `LanguageStrings` type and a `WordData` category list (see the
/// per-language files, e.g. `Spanish.swift`).
enum AppLanguage: String, CaseIterable, Identifiable, Codable {
    case german = "de"
    case english = "en"
    case spanish = "es"
    case french = "fr"
    case italian = "it"
    case portuguese = "pt-BR"
    case japanese = "ja"
    case korean = "ko"
    case chinese = "zh-Hans"
    case russian = "ru"
    case arabic = "ar"

    var id: String { rawValue }

    /// Whether this language is written right-to-left. The app picks its
    /// language in-app rather than via the system locale, so views must drive
    /// the `layoutDirection` environment from this for SwiftUI to mirror the UI.
    var isRTL: Bool { self == .arabic }

    var displayName: String {
        switch self {
        case .german: "Deutsch"
        case .english: "English"
        case .spanish: "Español"
        case .french: "Français"
        case .italian: "Italiano"
        case .portuguese: "Português"
        case .japanese: "日本語"
        case .korean: "한국어"
        case .chinese: "简体中文"
        case .russian: "Русский"
        case .arabic: "العربية"
        }
    }

    var flag: String {
        switch self {
        case .german: "🇩🇪"
        case .english: "🇬🇧"
        case .spanish: "🇪🇸"
        case .french: "🇫🇷"
        case .italian: "🇮🇹"
        case .portuguese: "🇧🇷"
        case .japanese: "🇯🇵"
        case .korean: "🇰🇷"
        case .chinese: "🇨🇳"
        case .russian: "🇷🇺"
        case .arabic: "🇸🇦"
        }
    }
}
