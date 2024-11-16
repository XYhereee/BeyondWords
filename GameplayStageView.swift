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
                ForEach(situation.options, id: \.self) { option in
                    GameplayButtonView(content: option, situation: $situation)
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var situation: ScenarioClass = .init(title: "placeholder value", image: "stuff", imageCoordinates: [0, 0], imagePosition: 0, options: ["Option 1", "Option 2"], id: "12345")
    GameplayStageView(situation: $situation)
}

