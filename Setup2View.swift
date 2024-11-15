//
//  Setup2View.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 11/11/R6.
//


//
//  Setup2View.swift
//  Challenge 3 App
//
//  Created by T Krobot on 11/11/R6.
//

import SwiftUI

struct Setup2View: View {
    @Binding var nickname: String
    @Binding var input: String
    @Binding var testInputGuard: Bool
    @State var showTutorialView: Bool = false
    var body: some View {
        if !showTutorialView {
            VStack (alignment: .center){
                Text("Nickname:")
                Text(testInputGuard == true ? "Exceeds Character Limit" : "")
                    .font(.footnote)
                //TextField("Max 6 Characters", text: $input)
                //    .multilineTextAlignment(.center)
                TextField("Max 6 Characters", text: $input)
                    .multilineTextAlignment(.center)
                
                Button {
                    guard input.count <= 6 else { testInputGuard = true; return }
                    //guard input.count <= 6 else { return }
                    testInputGuard = false
                    nickname = input
                    showTutorialView.toggle()
                } label: {
                    Text("Save")
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        if showTutorialView {
            //TutorialView()
        }
    }
}


#Preview {
    @Previewable @State var nickname: String = ""
    @Previewable @State var input: String = ""
    @Previewable @State var testInputGuard: Bool = false
    //Setup2View(nickname: $nickname, input: $input)
    Setup2View(nickname: $nickname, input: $input, testInputGuard: $testInputGuard)
}
  
