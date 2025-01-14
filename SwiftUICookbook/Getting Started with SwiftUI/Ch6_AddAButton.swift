//
//  Ch6_AddAButton.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch6_AddAButton: View {
    var body: some View {
        Button {
            print("Button Pressed")
        } label: {
            Text("Press Me!")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
        .padding()
        .background {
            LinearGradient(
                gradient: Gradient(colors: [.red, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
        .cornerRadius(10)
    }
}

#Preview {
    Ch6_AddAButton()
}
