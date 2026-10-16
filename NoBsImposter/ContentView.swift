//
//  ContentView.swift
//  NoBsImposter
//

import SwiftUI
import UIKit

/// The three screens the game moves through.
enum GamePhase {
    case setup
    case reveal
    case summary
}

struct ContentView: View {
    @State private var model = GameModel()
    @State private var phase: GamePhase = .setup

    var body: some View {
        ZStack {
            BackgroundView()

            switch phase {
            case .setup:
                SetupView(model: model) {
                    model.startRound()
                    phase = .reveal
                }
                .transition(.opacity)

            case .reveal:
                RevealView(
                    model: model,
                    onFinished: { phase = .summary },
                    onCancel: { phase = .setup }
                )
                .transition(.asymmetric(
                    insertion: .move(edge: .trailing).combined(with: .opacity),
                    removal: .opacity
                ))

            case .summary:
                SummaryView(
                    model: model,
                    onNewRound: {
                        model.startRound()
                        phase = .reveal
                    },
                    onMenu: { phase = .setup }
                )
                .transition(.opacity)
            }
        }
        .tint(AppTheme.accent)
        .preferredColorScheme(.dark)
        .animation(.smooth(duration: 0.35), value: phase)
        .onAppear { applyKeepScreenOn() }
        .onChange(of: model.keepScreenOn) { _, _ in applyKeepScreenOn() }
    }

    private func applyKeepScreenOn() {
        UIApplication.shared.isIdleTimerDisabled = model.keepScreenOn
    }
}

#Preview {
    ContentView()
}
