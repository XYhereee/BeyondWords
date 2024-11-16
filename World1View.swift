//
//  World1View.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 11/11/R6.
//


//
//  TutorialView.swift
//  Challenge 3 App
//
//  Created by T Krobot on 11/11/R6.
//

import SwiftUI

struct World1View: View {
    @State var nextView = ""
    var body: some View {
        if nextView.isEmpty{
            ZStack{
                Text("World 1")
                    .font(.headline)
                    .frame(width: 300, height: 300, alignment: .top)
                Image(systemName: "house")
                    .frame(width: 400, height: 100, alignment: .topLeading)
                    .onTapGesture{
                        //HouseView
                    }
                Image(systemName: "tree.fill")
                    .frame(width: 300, height: 70, alignment: .bottomTrailing)
                    .onTapGesture{
                        //TreeView
                    }
                
                Image(systemName: "apple.image.playground")
                    .frame(width: 200, height: 40, alignment: .bottomLeading)
                    .onTapGesture{
                        //PlaygroundView
                    }
                Image(systemName: "directcurrent")
                    .frame(width: 0, height: 60, alignment: .top)
                    .onTapGesture{
                        nextView = "DuckView"
                    }
            }
        }
        if nextView == "DuckView"{
            DuckView(duckScenario: ScenarioLibrary.duckScenario)
        }
    }
}
#Preview {
    World1View(nextView: "")
}
