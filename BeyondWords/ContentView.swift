//
//  ContentView.swift
//  BeyondWords
//
//  Created by Xi yue Gong on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
        VStack {
            Image(systemName: "speaker.wave.2.bubble")
                .imageScale(.large)
                .foregroundStyle(.tint)
            HStack {
                Text("Welcome to")
                Text("Beyond Words")
                    .foregroundStyle(.blue)
                    .font(.title)
            }
            NavigationLink(destination: TutorialViewOne()) {
                                Text("Go to Tutorial View 1")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
            }
        }
        .navigationTitle("First View")
    }
        .padding()
    }
}

#Preview {
    ContentView()
}
