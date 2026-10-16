//
//  Components.swift
//  NoBsImposter
//
//  Shared visual building blocks used across the screens.
//

import SwiftUI

/// Central place for the app's colors. The whole app runs in a locked dark
/// appearance so Liquid Glass surfaces and label colors always agree, which
/// keeps text at full contrast.
enum AppTheme {
    /// Primary accent used for prominent buttons and highlights.
    static let accent = Color(red: 0.16, green: 0.80, blue: 0.70) // teal
}

/// The app-wide background: a deep neutral-slate gradient with a couple of
/// soft, blurred glows to give the Liquid Glass surfaces something to refract.
struct BackgroundView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.11, green: 0.13, blue: 0.17),
                    Color(red: 0.08, green: 0.09, blue: 0.12),
                    Color(red: 0.05, green: 0.06, blue: 0.08)
                ],
                startPoint: .top,
                endPoint: .bottom
            )

            Circle()
                .fill(AppTheme.accent.opacity(0.18))
                .frame(width: 340)
                .blur(radius: 130)
                .offset(x: -150, y: -280)

            Circle()
                .fill(Color.blue.opacity(0.14))
                .frame(width: 320)
                .blur(radius: 140)
                .offset(x: 160, y: 320)
        }
        .ignoresSafeArea()
    }
}

/// A labelled stepper with glass +/- buttons.
struct CounterRow: View {
    let title: String
    let systemImage: String
    @Binding var value: Int
    let range: ClosedRange<Int>

    var body: some View {
        HStack {
            Label(title, systemImage: systemImage)
                .font(.headline)

            Spacer()

            HStack(spacing: 14) {
                stepButton("minus", enabled: value > range.lowerBound) {
                    value = max(range.lowerBound, value - 1)
                }
                Text("\(value)")
                    .font(.title2.weight(.bold).monospacedDigit())
                    .frame(minWidth: 30)
                    .contentTransition(.numericText())
                stepButton("plus", enabled: value < range.upperBound) {
                    value = min(range.upperBound, value + 1)
                }
            }
        }
    }

    private func stepButton(_ icon: String, enabled: Bool, action: @escaping () -> Void) -> some View {
        Button {
            withAnimation(.snappy) { action() }
        } label: {
            Image(systemName: icon)
                .font(.headline)
                .frame(width: 34, height: 34)
                .contentShape(Circle())
        }
        .buttonStyle(.glass)
        .disabled(!enabled)
        .opacity(enabled ? 1 : 0.4)
    }
}

/// A selectable category pill. Selected pills use the prominent glass style.
struct CategoryChip: View {
    let category: WordCategory
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button {
            withAnimation(.snappy) { action() }
        } label: {
            HStack(spacing: 12) {
                Image(systemName: category.symbol)
                    .font(.body.weight(.semibold))
                    .frame(width: 24)
                Text(category.name)
                    .font(.body.weight(.semibold))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                Spacer(minLength: 8)
                Image(systemName: "checkmark.circle.fill")
                    .font(.body.weight(.semibold))
                    .opacity(isSelected ? 1 : 0)
            }
            .frame(maxWidth: .infinity, minHeight: 28, alignment: .leading)
            .padding(.horizontal, 18)
            .padding(.vertical, 14)
            .contentShape(Rectangle())
        }
        .buttonStyleForSelection(isSelected)
    }
}

private extension View {
    /// Applies the prominent glass style when selected, plain glass otherwise.
    @ViewBuilder
    func buttonStyleForSelection(_ isSelected: Bool) -> some View {
        if isSelected {
            buttonStyle(.glassProminent)
        } else {
            buttonStyle(.glass)
        }
    }
}

/// Builds an attributed string that line-breaks using the given language's
/// hyphenation rules. Long words then wrap with a hyphen (e.g. "Program-
/// mierer") instead of SwiftUI's default of orphaning a single character.
func hyphenated(_ string: String, language: AppLanguage, alignment: NSTextAlignment = .center) -> AttributedString {
    var attr = AttributedString(string)
    let style = NSMutableParagraphStyle()
    style.hyphenationFactor = 1
    style.alignment = alignment
    attr.mergeAttributes(AttributeContainer([.paragraphStyle: style]))
    attr.languageIdentifier = language.rawValue
    return attr
}
