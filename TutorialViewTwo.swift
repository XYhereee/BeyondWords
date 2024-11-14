//
//  TutorialViewTwo.swift
//  BeyondWords
//
//  Created by Xi yue Gong on 11/11/24.
//

import SwiftUI

extension Color {
    static let customLightBlue = Color(red: 169 / 255, green: 211 / 255, blue: 220 / 255)
}

struct TutorialViewTwo: View {
    
    
    @State var currentLine: Int = 0
    @State var Text1 : String = ""
    @State var endOfLine : Bool = true
    @State var textEnded: Bool = false
    
    let lines: [String] = ["It is the last 2 weeks of school holiday.", "Your mom came in your room to check in on you."]
    
    //这是学校假期的最后两个星期。你的妈妈进入了你的房间与你谈话，查看你的近况如何。
    @State var Text2 : String = ""
    
    func typeWriter(at position: Int = 0, text: String) {
        
        if endOfLine {
            endOfLine = false
            Text1 += "\n"
        }
        
        if position < text.count {
            //check whether
            //Run the code inside the DispatchQueue after 0.2s
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                Text1.append(text[position])
                typeWriter(at: position + 1, text: text)
            }
            
        } else {
            currentLine += 1
            if currentLine == lines.count {
                textEnded = true
            }
            
            endOfLine = true
        }
            
    }
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 16) {
                Text(Text1)
                    .foregroundStyle(Color.customLightBlue)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                if textEnded {
                    
                    NavigationLink {
                        TutorialViewThree()
                    } label: {
                        Image(systemName: "arrowshape.right")
                            .foregroundStyle(.black)
                    }
                    
                } else {
                    
                    Button {
                        guard endOfLine else { return }
                        if !(currentLine == lines.count){
                            typeWriter(text: lines[currentLine])
                        } else {
                            //Next View
                            
                        }
                    } label: {
                        Text(currentLine == lines.count ? "→" : "Next")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                }
                
            }
        }
        .padding()
    }
}

extension String {
    subscript(offset : Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

#Preview {
    TutorialViewTwo()
}
