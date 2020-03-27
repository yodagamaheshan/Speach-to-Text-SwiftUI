//
//  ContentView.swift
//  SpeachToText-SwiftUI
//
//  Created by Heshan Yodagama on 3/23/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isRecording: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button(action: {
                //recording start
                self.isRecording.toggle()
            }) {
                VStack {
                    Image(systemName: isRecording ? "mic.circle.fill" : "mic.circle" )
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                    Text(isRecording ? "Stop" : "Record")
                }
                .foregroundColor(isRecording ? Color.red : Color.blue)
                .animation(.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
