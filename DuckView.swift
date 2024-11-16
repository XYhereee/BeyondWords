//
//  DuckView.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 16/11/R6.
//

import SwiftUI

struct DuckView: View {
    @State var duckScenario: ScenarioClass
    var body: some View {
        GameplayStageView(situation: $duckScenario)
    }
}

#Preview {
    @Previewable @State var duckScenario: ScenarioClass = .init(title: "You see a duck walking around the perimeter of the pond.", image:"duck", imageCoordinates: [100,100], imagePosition: 0, options: ["Chase Duck","Watch from a Distance"], id: "duckScenario")
    DuckView(duckScenario: duckScenario)
}
