//
//  DuckView.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 16/11/R6.
//

import SwiftUI
struct DuckView: View {
    @State var progression: [Int] = []
    @State var currentScenario: ScenarioClass = ScenarioLibrary.duckScenarioOpening
    var body: some View {
        GameplayStageView(situation: $currentScenario, progression: $progression)
            .onChange(of: progression) { oldValue, newProgression in
                if newProgression[0] == 1 {
                    currentScenario = ScenarioLibrary.duckScenarioChase
                }
                if newProgression[0] == 2 {
                    currentScenario = ScenarioLibrary.duckScenarioWatch
                }
            }
    }
}

#Preview {
    @Previewable @State var duckScenario: ScenarioClass = .init(title: "You Witness A Duck", innate: "You see a duck walking around the perimeter of the pond. You hardly see ducks around here during your numerous visits here. Your curiosity is piqued.", speech:"", image:"duck", imageCoordinates: [100,100], imagePosition: 0, options: ["Chase Duck","Watch from a Distance"], id: "duckScenarioOpening")
    DuckView(progression: [])
}
