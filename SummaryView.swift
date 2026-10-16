//
//  SummaryView.swift
//  NoBsImposter
//
//  Shown once everyone has seen their word. Discussion and voting happen
//  verbally; the solution can optionally be revealed to settle the round.
//

import SwiftUI

struct SummaryView: View {
    let model: GameModel
    let onNewRound: () -> Void
    let onMenu: () -> Void

    @State private var showSolution = false
    @State private var showingSolutionConfirmation = false

    private var s: Localization { model.strings }

    var body: some View {
        VStack(spacing: 24) {
            Spacer(minLength: 0)

            Image(systemName: "person.3.sequence.fill")
                .font(.system(size: 60))
                .foregroundStyle(AppTheme.accent)

            VStack(spacing: 8) {
                Text(s.everyoneReady)
                    .font(.largeTitle.weight(.heavy))
                Text(s.imposterCountAmongYou(model.imposterCount))
                    .font(.headline)
                    .foregroundStyle(.secondary)
            }

            startingPlayerCard

            Text(s.discussHint)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            solutionSection

            Spacer(minLength: 0)

            buttons
        }
        .padding(24)
        .confirmationDialog(s.revealSolutionTitle,
                            isPresented: $showingSolutionConfirmation,
                            titleVisibility: .visible) {
            Button(s.revealSolution) {
                withAnimation(.smooth) { showSolution = true }
            }
            Button(s.cancel, role: .cancel) {}
        } message: {
            Text(s.revealSolutionMessage)
        }
    }

    // MARK: Starting player

    @ViewBuilder
    private var startingPlayerCard: some View {
        if let round = model.round {
            VStack(spacing: 6) {
                Text(s.startingPlayer.uppercased())
                    .font(.caption.weight(.bold))
                    .foregroundStyle(.secondary)
                Text(model.displayName(for: round.startingPlayerIndex))
                    .font(.title.weight(.heavy))
                    .foregroundStyle(AppTheme.accent)
                    .multilineTextAlignment(.center)
                Text(s.startsDescribing)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            .padding(20)
            .frame(maxWidth: .infinity)
            .glassEffect(.regular, in: .rect(cornerRadius: 24))
        }
    }

    // MARK: Solution

    @ViewBuilder
    private var solutionSection: some View {
        if showSolution, let round = model.round {
            VStack(spacing: 14) {
                VStack(spacing: 2) {
                    Text(s.theWordWas.uppercased())
                        .font(.caption2.weight(.bold))
                        .foregroundStyle(.secondary)
                    Text(round.word)
                        .font(.title2.weight(.bold))
                }

                VStack(spacing: 2) {
                    Text(s.imposterWasLabel(count: round.imposterIndices.count).uppercased())
                        .font(.caption2.weight(.bold))
                        .foregroundStyle(.secondary)
                    Text(imposterNames(round))
                        .font(.title3.weight(.bold))
                        .foregroundStyle(.red)
                }
            }
            .padding(24)
            .frame(maxWidth: .infinity)
            .glassEffect(.regular, in: .rect(cornerRadius: 24))
            .transition(.scale.combined(with: .opacity))
        } else {
            Button {
                showingSolutionConfirmation = true
            } label: {
                Label(s.revealSolution, systemImage: "eye.fill")
                    .font(.subheadline.weight(.semibold))
            }
            .buttonStyle(.glass)
        }
    }

    private func imposterNames(_ round: Round) -> String {
        round.imposterIndices
            .sorted()
            .map { model.displayName(for: $0) }
            .joined(separator: ", ")
    }

    // MARK: Buttons

    private var buttons: some View {
        VStack(spacing: 12) {
            Button(action: onNewRound) {
                Label(s.newRound, systemImage: "arrow.clockwise")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            .buttonStyle(.glassProminent)

            Button(action: onMenu) {
                Label(s.backToMenu, systemImage: "house.fill")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            .buttonStyle(.glass)
        }
    }
}
