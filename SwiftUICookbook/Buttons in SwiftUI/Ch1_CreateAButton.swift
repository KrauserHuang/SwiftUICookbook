//
//  Ch1_CreateAButton.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/3/7.
//

import SwiftUI

struct Ch1_CreateAButton: View {
    var body: some View {
        Button("Click me!") {
            print("Hey")
        }
        .font(.headline)
        .padding(10)
        .foregroundStyle(.white)
        .background(.blue)
        .cornerRadius(5)
        
    }
}

#Preview {
    Ch1_CreateAButton()
}
