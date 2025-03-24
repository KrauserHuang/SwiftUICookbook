//
//  Ch2_CustomizeTheAppearanceOfAButton.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/3/20.
//

import SwiftUI

struct Ch2_CustomizeTheAppearanceOfAButton: View {
    var body: some View {
        Button("Press Me") {
            //
        }
        .padding()
        .background(.orange)
        .foregroundColor(.white)
        .font(.title)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    Ch2_CustomizeTheAppearanceOfAButton()
}
