//
//  Ch8_CreateACustomViewModifier.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch8_CreateACustomViewModifier: View {
    var body: some View {
        Text("Hello, World!")
            .modifier(BoldAndItalicModifier())
        
    }
}

/*
 When you want to apply the same set of view modifiers to multiple views, you can create a custom view modifier.
 This allows you to encapsulate the view modifiers in a single place and apply them to any view you want.
 
 要共用同一個view modifier到多個view上，可以建立一個custom view modifier。
 遵從ViewModifier協議，並實作body(content:)方法。
 */
struct BoldAndItalicModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .italic()
    }
}

#Preview {
    Ch8_CreateACustomViewModifier()
}
