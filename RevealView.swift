//
//  RevealView.swift
//  NoBsImposter
//
//  Pass-and-play: each player privately reveals their word (or that they are
//  the imposter) before handing the device to the next player.
//

import SwiftUI

struct RevealView: View {
    let model: GameModel
    let onFinished: () -> Void
    let onCancel: () -> Void

    /// Position in the reveal sequence (0-based). The actual player is looked
    /// up through the round's randomized `revealOrder`.
    @State private var step = 0
    /// True while the player is holding the card down.
    @State private var isPressing = false
    /// True once the current player has revealed their card at least once,
    /// which unlocks the button to move on to the next player.
    @State private var hasRevealed = false
    @State private var showingQuitConfirmation = false

    private var s: Localization { model.strings }

    private var playerIndex: Int {
        guard let order = model.round?.revealOrder, step < order.count else { return step }
        return order[step]
    }
    private var currentName: String { model.displayName(for: playerIndex) }
    private var isLastPlayer: Bool { step == model.playerCount - 1 }
    private var role: PlayerRole { model.role(for: playerIndex) }

    var body: some View {
        VStack(spacing: 28) {
            topBar
            Spacer(minLength: 0)
            card
            Spacer(minLength: 0)
            bottomBar
        }
        .padding(24)
        .confirmationDialog(s.quitGameTitle,
                            isPresented: $showingQuitConfirmation,
                            titleVisibility: .visible) {
            Button(s.backToMenu, role: .destructive, action: onCancel)
            Button(s.cancel, role: .cancel) {}
        } message: {
            Text(s.quitGameMessage)
        }
    }

    // MARK: Top bar

    private var topBar: some View {
        ZStack {
            progress
            HStack {
                Button {
                    showingQuitConfirmation = true
                } label: {
                    Image(systemName: "xmark")
                        .font(.headline)
                        .frame(width: 44, height: 44)
                        .contentShape(Circle())
                }
                .buttonStyle(.glass)
                Spacer()
            }
        }
        .padding(.top, 12)
    }

    private var progress: some View {
        VStack(spacing: 6) {
            Text(currentName)
                .font(.title2.weight(.bold))
            Text("\(step + 1) / \(model.playerCount)")
                .font(.subheadline.monospacedDigit())
                .foregroundStyle(.secondary)
        }
    }

    // MARK: Card

    private var card: some View {
        ZStack {
            // Both faces are stacked and cross-faded in place — no movement,
            // just a gentle fade with a subtle zoom on the revealed content.
            hiddenContent
                .opacity(isPressing ? 0 : 1)

            revealedContent
                .opacity(isPressing ? 1 : 0)
                .scaleEffect(isPressing ? 1 : 0.96)
        }
        .frame(maxWidth: .infinity)
        .frame(minHeight: 340)
        .padding(28)
        .glassEffect(cardGlass, in: .rect(cornerRadius: 36))
        .contentShape(.rect(cornerRadius: 36))
        .padding(.horizontal, 4)
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    guard !isPressing else { return }
                    withAnimation(.easeInOut(duration: 0.22)) {
                        isPressing = true
                        hasRevealed = true
                    }
                }
                .onEnded { _ in
                    withAnimation(.easeInOut(duration: 0.2)) { isPressing = false }
                }
        )
    }

    // Neutral glass regardless of role — a tinted card could be mistaken for a
    // red/green "signal" by other players watching. The role is shown via the
    // text content instead (see the imposter case below).
    private var cardGlass: Glass {
        isPressing ? .regular : .regular.interactive()
    }

    private var hiddenContent: some View {
        VStack(spacing: 18) {
            Image(systemName: "hand.tap.fill")
                .font(.system(size: 56))
                .foregroundStyle(.secondary)
            Text(s.holdToReveal)
                .font(.title3.weight(.semibold))
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
            Text(passDeviceText)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    /// "Gib das Gerät an <name>" with the player's name highlighted in the
    /// accent color and a slightly heavier weight.
    private var passDeviceText: AttributedString {
        var full = AttributedString(s.passDevicePrefix)
        var name = AttributedString(currentName)
        name.foregroundColor = AppTheme.accent
        name.font = .subheadline.weight(.semibold)
        full.append(name)
        return full
    }

    @ViewBuilder
    private var revealedContent: some View {
        switch role {
        case let .regular(word, category):
            VStack(spacing: 14) {
                categoryBadge(category)
                Text(hyphenated(word, language: model.language))
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundStyle(AppTheme.accent)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
            }
        case let .imposter(category):
            VStack(spacing: 16) {
                Image(systemName: "person.fill.questionmark")
                    .font(.system(size: 52))
                    .foregroundStyle(.red)
                Text(s.youAreImposter)
                    .font(.title.weight(.heavy))
                    .foregroundStyle(.red)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                if let category {
                    categoryBadge(category)
                    Text(s.imposterHint)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                } else {
                    Text(s.imposterHintNoCategory)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }

    private func categoryBadge(_ category: String) -> some View {
        VStack(spacing: 2) {
            Text(s.categoryLabel.uppercased())
                .font(.caption2.weight(.bold))
                .foregroundStyle(.secondary)
            Text(category)
                .font(.headline)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .glassEffect(.regular, in: .capsule)
    }

    // MARK: Bottom bar

    @ViewBuilder
    private var bottomBar: some View {
        if hasRevealed {
            Button(action: advance) {
                Label(isLastPlayer ? s.done : s.next,
                      systemImage: isLastPlayer ? "checkmark" : "arrow.right")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            .buttonStyle(.glassProminent)
            .disabled(isPressing)
        } else {
            // Keep the layout stable until the card has been revealed once.
            Color.clear.frame(height: 52)
        }
    }

    private func advance() {
        if isLastPlayer {
            onFinished()
        } else {
            withAnimation(.smooth) {
                step += 1
                isPressing = false
                hasRevealed = false
            }
        }
    }
}
