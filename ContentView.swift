//
//  ContentView.swift
//  Challenge 3 App
//
//  Created by T Krobot on 11/11/R6.
//


//
//  ContentView.swift
//  Challenge 3 App
//
//  Created by T Krobot on 09/11/R6.
//

import SwiftUI
struct ContentView: View {
    @State var showSetupView = false
    @State var timeRemaining = 5
    @State var appearance = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    //May need an explanation on what this code means. What is on? Or .commmon?
    var body: some View {
        if !showSetupView{
            VStack {
                Image(systemName: "pencil")
                Text("App icon")
                    .font(.footnote .bold())
                //Text(timeRemaining <= 0 ? "Time's Up!" :"Time Remaining: \(timeRemaining)")
                //    .font(.footnote .bold())
            }
            .padding()
            .onReceive(timer) { _ in
                timeRemaining -= 1
                if timeRemaining == 0 {
                    showSetupView.toggle()
                }
            }
        }
        if showSetupView{
            SetupView(appearance: $appearance, nickname: "", input: "", testInputGuard: false, showSetup2View: false)
        }
    }
}

#Preview {
    ContentView()
}
