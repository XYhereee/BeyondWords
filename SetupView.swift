//
//  SetupView.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 11/11/R6.
//


//
//  SetupView.swift
//  Challenge 3 App
//
//  Created by T Krobot on 09/11/R6.
//
import SwiftUI

struct SetupView: View{
    @Binding var appearance: String
    @State var nickname: String
    @State var input: String
    @State var testInputGuard: Bool
    @State var showSetup2View: Bool
    //@Binding var testTimer: String
    let checkAppearance = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    //Still need help, see ContentView for questions
    var body: some View {
        if !showSetup2View{
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: appearance == "Baseball" ? "figure.baseball.circle" : "figure.baseball")
                        .onTapGesture{
                            appearance = "Baseball"
                        }
                    Spacer()
                    Image(systemName: appearance == "Basketball" ? "figure.basketball.circle" : "figure.basketball")
                        .onTapGesture{
                            appearance = "Basketball"
                        }
                    Spacer()
                }
                .padding()
                Text("Choose an appearance: \(appearance)")
            }
            Button {
                guard !appearance.isEmpty else { return }
                showSetup2View.toggle()
            } label: {
                Text("Save")
            }
        }
        
        if showSetup2View {
            Setup2View(nickname: $nickname, input: $input, testInputGuard: $testInputGuard)
        }
    }
}
#Preview{
    @Previewable @State var appearance: String = ""
    SetupView(appearance: $appearance, nickname: "", input: "", testInputGuard: false, showSetup2View: false)
}
