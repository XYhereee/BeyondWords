//
//  World3View.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 11/11/R6.
//

import SwiftUI

struct World3View: View {
    var body: some View {
        ZStack{
            Text("World 3")
                .font(.headline)
                .frame(width: 300, height: 300, alignment: .top)
            Image(systemName: "tree.circle")
                .frame(width: 400, height: 200, alignment: .bottomLeading)
                .onTapGesture{
                     //SportsHallView
                }
            Image(systemName: "door.french.open")
                .frame(width: 300, height: 200, alignment: .bottomTrailing)
                .onTapGesture{
                     //GateView
                }
            
            Image(systemName: "person.fill.and.arrow.left.and.arrow.right.outward")
                .frame(width: 400, height: 50, alignment: .bottomLeading)
                .onTapGesture{
                     //FoodView
                }
            Image(systemName: "music.house")
                .frame(width: 0, height: 60, alignment: .top)
                .onTapGesture{
                     //ClassroomView
                }
        }
    }
}

#Preview {
    World3View()
}
