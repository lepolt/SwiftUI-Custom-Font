//
//  FontTestingApp.swift
//  FontTesting
//
//  Created by Jonathan Lepolt on 2/14/24.
//

import MyLibrary
import SwiftUI

@main
struct FontTestingApp: App {
    init() {
        MyLibrary.registerFonts()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
