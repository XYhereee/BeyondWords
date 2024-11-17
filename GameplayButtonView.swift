//
//  GameplayInterfaceView.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 14/11/R6.
//

import SwiftUI

struct GameplayButtonView: View {
    @State var content: String
    @Binding var progression: [Int]
    let optionNumber: Int
    var body: some View {
        Button {
            progression.append(optionNumber)
        } label: {
            Text("\(content)")
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    @Previewable @State var progression: [Int] = []
    GameplayButtonView(content: "Option 1", progression: $progression, optionNumber: 1)
}
