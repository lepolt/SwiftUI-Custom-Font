//
//  SwiftUIView.swift
//  
//
//  Created by Jonathan Lepolt on 2/14/24.
//

import SwiftUI

public struct CustomTextView: View {
    private let text: String

    public init(_ text: String) {
        self.text = text
    }

    public var body: some View {
        Text(text)
            .font(Font.custom("Trench", size: 18, relativeTo: .body))

    }
}

#Preview {
    CustomTextView("Hello, World!")
}
