//
//  GameplayInterfaceView.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 14/11/R6.
//

import SwiftUI

struct GameplayButtonView: View {
    @State var arrayPosition: Int
    @Binding var situation: ScenarioClass
    var body: some View {
            Button {
                
            } label: {
                Text("\($situation.sampleScenario.options[arrayPosition])")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
            }
        }
    }

#Preview {
    @Previewable @State var situation: ScenarioClass = ScenarioClass(image: "stuff", imageCoordinates: [0, 0], imagePosition: 1, options: ["Option 1", "Option 2"], id: "12345")
    GameplayButtonView(arrayPosition: 0, situation: $situation)
}
