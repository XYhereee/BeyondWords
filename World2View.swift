//
//  World2View.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 11/11/R6.
//

import SwiftUI

struct World2View: View {
    var body: some View {
        ZStack{
            Text("World 2")
                .font(.headline)
                .frame(width: 300, height: 300, alignment: .top)
            Image(systemName: "sportscourt")
                .frame(width: 400, height: 200, alignment: .bottomLeading)
                .onTapGesture{
                     //SportsHallView
                }
            Image(systemName: "pedestrian.gate.open")
                .frame(width: 300, height: 200, alignment: .bottomTrailing)
                .onTapGesture{
                     //GateView
                }
            
            Image(systemName: "fork.knife")
                .frame(width: 400, height: 50, alignment: .bottomLeading)
                .onTapGesture{
                     //FoodView
                }
            Image(systemName: "globe.desk")
                .frame(width: 0, height: 60, alignment: .top)
                .onTapGesture{
                     //ClassroomView
                }
        }
    }
}

#Preview {
    World2View()
}
