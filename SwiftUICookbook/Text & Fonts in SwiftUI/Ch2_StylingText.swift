//
//  Ch2_StylingText.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/22.
//

import SwiftUI

struct Ch2_StylingText: View {
    var body: some View {
        Text("Hello, 1982 World!")
            .font(.custom("Iansui", size: 24))
            .foregroundStyle(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

#Preview {
    Ch2_StylingText()
}
