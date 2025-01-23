//
//  Ch5_FormatText.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/22.
//

import SwiftUI

struct Ch5_FormatText: View {
    
    let quote = """
**"Be yourself;** everyone else is _already taken._"
- **Oscar Wilde**
"""
    
    
    var body: some View {
//        Text("Hello ")
//            .fontWeight(.bold)
//            .italic()
//        + Text("World")
//            .underline()
        
//        Text("Hello, World!")
//            .fontWeight(.semibold)
//            .italic()
//            .underline()
//            .strikethrough(true, color: .red)
        
//        Text("**Bold** and _italic_")
        let attributedQuote = try! AttributedString(markdown: quote)
        Text(attributedQuote)
            .font(.system(size: 16, weight: .medium, design: .serif))
            .foregroundColor(.blue)
    }
}

#Preview {
    Ch5_FormatText()
}
