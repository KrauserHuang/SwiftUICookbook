//
//  Ch7_CreateATextField.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch7_CreateATextField: View {
    
    @State private var name = ""
    
    var body: some View {
        // "Enter your name" serves as a placeholder text
        // text: $name create a 2-way binding between the TextField and the name property
        // multilineTextAlignment(.center) centers the text in the TextField
        TextField("Enter your name", text: $name)
            .foregroundStyle(.blue)
            .background(.yellow)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    Ch7_CreateATextField()
}
