//
//  ContentView.swift
//  SpeachToText-SwiftUI
//
//  Created by Heshan Yodagama on 3/23/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button(action: {
                //recording start
            }) {
                HStack {
                    Image(systemName: "mic.fill")
                    Text("Record")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
