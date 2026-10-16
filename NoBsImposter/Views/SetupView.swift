//
//  SetupView.swift
//  NoBsImposter
//

import SwiftUI

struct SetupView: View {
    @Bindable var model: GameModel
    let onStart: () -> Void

    private var s: Localization { model.strings }

    @State private var showingCategorySheet = false
    @State private var showingHowToPlay = false
    @State private var namesEditMode: EditMode = .inactive

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                header
                settingsCard
                namesSection
                categoriesButton
            }
            .padding(20)
            .padding(.bottom, 96)
        }
        .scrollIndicators(.hidden)
        .safeAreaInset(edge: .bottom) {
            startButton
        }
        .sheet(isPresented: $showingCategorySheet) {
            CategorySelectionSheet(model: model)
        }
        .sheet(isPresented: $showingHowToPlay) {
            HowToPlaySheet(strings: s)
        }
    }

    // MARK: Header

    private var header: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text(s.appTitle)
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
            }
            Spacer()
            HStack(spacing: 10) {
                helpButton
                languageMenu
            }
        }
        .padding(.top, 8)
    }

    private var helpButton: some View {
        Button {
            showingHowToPlay = true
        } label: {
            Image(systemName: "questionmark")
                .font(.title2.weight(.semibold))
                .frame(width: 48, height: 48)
                .glassEffect(.regular.interactive(), in: .circle)
        }
        .buttonStyle(.plain)
    }

    private var languageMenu: some View {
        Menu {
            ForEach(AppLanguage.allCases) { lang in
                Button {
                    model.language = lang
                } label: {
                    HStack {
                        Text("\(lang.flag)  \(lang.displayName)")
                        if model.language == lang {
                            Spacer()
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
        } label: {
            Text(model.language.flag)
                .font(.title2)
                .frame(width: 48, height: 48)
                .glassEffect(.regular.interactive(), in: .circle)
        }
    }

    // MARK: Settings

    private var settingsCard: some View {
        VStack(spacing: 20) {
            CounterRow(
                title: s.players,
                systemImage: "person.2.fill",
                value: $model.playerCount,
                range: model.playerRange
            )
            Divider().opacity(0.4)
            CounterRow(
                title: s.imposters,
                systemImage: "person.fill.questionmark",
                value: $model.imposterCount,
                range: 1...model.maxImposters
            )
            Divider().opacity(0.4)
            Toggle(isOn: $model.imposterKnowsCategory) {
                Label(s.imposterKnowsCategoryLabel, systemImage: "tag.fill")
                    .font(.headline)
            }
            .tint(AppTheme.accent)
            Divider().opacity(0.4)
            Toggle(isOn: $model.keepScreenOn) {
                Label(s.keepScreenOnLabel, systemImage: "sun.max.fill")
                    .font(.headline)
            }
            .tint(AppTheme.accent)
        }
        .padding(20)
        .glassEffect(.regular, in: .rect(cornerRadius: 24))
    }

    // MARK: Names

    private var namesSection: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(alignment: .center) {
                Text(s.players)
                    .font(.title3.weight(.bold))
                Spacer()
                Button {
                    withAnimation(.snappy) {
                        namesEditMode = namesEditMode.isEditing ? .inactive : .active
                    }
                } label: {
                    Image(systemName: namesEditMode.isEditing ? "checkmark" : "arrow.up.arrow.down")
                        .font(.subheadline.weight(.semibold))
                        .frame(width: 40, height: 40)
                        .contentShape(Circle())
                }
                .buttonStyle(.glass)
            }

            List {
                ForEach(Array(0..<model.playerCount), id: \.self) { index in
                    nameRow(index)
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }
                .onMove { from, to in
                    model.playerNames.move(fromOffsets: from, toOffset: to)
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .scrollDisabled(true)
            .environment(\.editMode, $namesEditMode)
            .frame(height: CGFloat(model.playerCount) * 64)
            // The name fields are UIKit-backed (UITextField). UIKit caches the
            // RTL layout direction and won't reset it when switching back from
            // Arabic, leaving the fields mirrored. Rebind identity to the
            // language so SwiftUI rebuilds the rows with the correct direction.
            .id(model.language)
        }
    }

    private func nameRow(_ index: Int) -> some View {
        HStack(spacing: 12) {
            Image(systemName: "\(index + 1).circle.fill")
                .font(.title3)
                .foregroundStyle(.secondary)
            TextField(s.playerTitle(index + 1), text: $model.playerNames[index])
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
                .submitLabel(.done)
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 12)
        .glassEffect(.regular, in: .capsule)
    }

    // MARK: Categories

    private var categorySummary: String {
        model.allCategoriesSelected
            ? s.allCategories
            : s.categoriesSummary(selected: model.selectedCategoryIDs.count,
                                  of: model.availableCategories.count)
    }

    private var categoriesButton: some View {
        Button {
            showingCategorySheet = true
        } label: {
            HStack(spacing: 14) {
                Image(systemName: "square.grid.2x2.fill")
                    .font(.headline)
                VStack(alignment: .leading, spacing: 2) {
                    Text(s.categories)
                        .font(.headline)
                    Text(categorySummary)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(.secondary)
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .glassEffect(.regular, in: .rect(cornerRadius: 24))
            .contentShape(.rect(cornerRadius: 24))
        }
        .buttonStyle(.plain)
    }

    // MARK: Start

    private var startButton: some View {
        VStack(spacing: 8) {
            if !model.canStart {
                Text(s.selectAtLeastOneCategory)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            Button(action: onStart) {
                Label(s.startGame, systemImage: "play.fill")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            .buttonStyle(.glassProminent)
            .disabled(!model.canStart)
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 8)
    }
}

// MARK: - Category selection sheet

struct CategorySelectionSheet: View {
    @Bindable var model: GameModel
    @Environment(\.dismiss) private var dismiss

    private var s: Localization { model.strings }

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(model.availableCategories) { category in
                        CategoryChip(
                            category: category,
                            isSelected: model.selectedCategoryIDs.contains(category.id)
                        ) {
                            model.toggleCategory(category.id)
                        }
                    }
                }
                .padding(20)
            }
            .scrollIndicators(.hidden)
            .background(BackgroundView())
            .navigationTitle(s.categories)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(model.allCategoriesSelected ? s.none : s.all) {
                        withAnimation(.snappy) {
                            if model.allCategoriesSelected {
                                model.deselectAllCategories()
                            } else {
                                model.selectAllCategories()
                            }
                        }
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(s.done) { dismiss() }
                        .fontWeight(.semibold)
                }
            }
        }
        .preferredColorScheme(.dark)
        .tint(AppTheme.accent)
    }
}

// MARK: - How to play sheet

struct HowToPlaySheet: View {
    let strings: Localization
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 22) {
                    Text(strings.howToPlayIntro)
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .fixedSize(horizontal: false, vertical: true)

                    ForEach(Array(strings.howToPlaySteps.enumerated()), id: \.offset) { index, step in
                        HStack(alignment: .top, spacing: 14) {
                            Text("\(index + 1)")
                                .font(.headline.weight(.bold))
                                .foregroundStyle(AppTheme.accent)
                                .frame(width: 34, height: 34)
                                .glassEffect(.regular, in: .circle)
                            Text(step)
                                .font(.body)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }

                    HStack(alignment: .top, spacing: 14) {
                        Image(systemName: "lightbulb.fill")
                            .font(.headline)
                            .foregroundStyle(AppTheme.accent)
                            .frame(width: 34, height: 34)
                        Text(strings.howToPlayTip)
                            .font(.callout)
                            .foregroundStyle(.secondary)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.top, 4)
                }
                .padding(20)
            }
            .scrollIndicators(.hidden)
            .background(BackgroundView())
            .navigationTitle(strings.howToPlay)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(strings.done) { dismiss() }
                        .fontWeight(.semibold)
                }
            }
        }
        .preferredColorScheme(.dark)
        .tint(AppTheme.accent)
    }
}
