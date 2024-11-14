//
//  TutorialViewOne.swift
//  BeyondWords
//
//  Created by Xi yue Gong on 9/11/24.
//

import SwiftUI

struct TutorialViewOne: View {
    @State private var offsetX: CGFloat = 0.0
    
    var body: some View {
            // State variable to track the character's position
            

                VStack {
                    Spacer()

                    // The character (a circle in this case)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                        // Apply the offset for movement
                        .offset(x: offsetX)
                        // Animate the movement
                        .animation(.easeInOut(duration: 2), value: offsetX)

                    Spacer()

                    // Button to trigger the movement
                    Button("Move Character") {
                        // Update the position (toggle between two positions)
                        offsetX = (offsetX == 0) ? 200 : 0
                    }
                        NavigationLink(destination: TutorialViewTwo()) {
                            Text("Go to Tutorial View Two")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
                        }
                    
                    .padding()
                }
            }
        }

#Preview {
    TutorialViewOne()
}
