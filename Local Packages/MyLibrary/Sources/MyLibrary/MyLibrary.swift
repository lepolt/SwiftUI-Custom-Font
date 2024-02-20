// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct MyLibrary {
    public static func registerFonts() {
        guard let url = Bundle.module.url(forResource: "TrenchThin-aZ1J", withExtension: "ttf") else {
            fatalError("Could not find font file")
        }

        print("Registering font at \(url.absoluteString)")
        
        guard let fontDataProvider = CGDataProvider(url: url as CFURL) else {
            fatalError("Could not create font data provider for \(url).")
        }

        guard let font = CGFont(fontDataProvider) else {
            fatalError("Could not create font")
        }

        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            print(error!.takeUnretainedValue())
        }

        guard error == nil else {
            fatalError()
        }

        print("Success!")
    }
}
