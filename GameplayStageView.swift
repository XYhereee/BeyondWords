//
//  GameplayStageView.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 14/11/R6.
//

import SwiftUI

struct GameplayStageView: View {
    @Binding var situation: ScenarioClass
    @Binding var progression: [Int]
    var body: some View {
        VStack {
            Text("\(situation.title)")
                .font(.title)
            Text("\(situation.innate)")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding()
            HStack {
                ForEach(Array(situation.options.enumerated()), id: \.element) { option, content in
                    GameplayButtonView(content: content, progression: $progression, optionNumber: option + 1)

                }
            }
            .onChange(of: situation.options) { oldValue, newValue in
                print(newValue)
            }
        }
    }
}

#Preview {
    @Previewable @State var situation: ScenarioClass = .init(title: "You Witness A Duck", innate: "You see a duck walking around the perimeter of the pond. You hardly see ducks around here during your numerous visits here. Your curiosity is piqued.", speech:"", image:"duck", imageCoordinates: [100,100], imagePosition: 0, options: ["Chase Duck","Watch from a Distance"], id: "duckScenarioOpening")
    @Previewable @State var progression: [Int] = []
    GameplayStageView(situation: $situation, progression: $progression)
}


