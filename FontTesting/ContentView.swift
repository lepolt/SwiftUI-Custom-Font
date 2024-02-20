//
//  ContentView.swift
//  FontTesting
//
//  Created by Jonathan Lepolt on 2/14/24.
//

import SwiftUI
import MyLibrary

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Regular")
            CustomTextView("Custom")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
