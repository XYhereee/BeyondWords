//
//  GameplayStageView.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 14/11/R6.
//

import SwiftUI

struct GameplayStageView: View {
    @Binding var situation: ScenarioClass
    var body: some View {
        VStack {
            HStack {
                // Iterating through the options in the scenario
                ForEach(situation.sampleScenario.options, id: \.self) { option in
                    GameplayButtonView(arrayPosition: Int(option)!, situation: $situation)
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var situation: ScenarioClass = ScenarioClass(image: "stuff", imageCoordinates: [0, 0], imagePosition: 0, options: ["Option 1", "Option 2"], id: "12345")
    GameplayStageView(situation: $situation)
}

