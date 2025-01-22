//
//  Ch3_CreateAMultilineTextView.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/22.
//

import SwiftUI

struct Ch3_CreateAMultilineTextView: View {
    var body: some View {
        Text("Why do programmers always mix up Halloween and Christmas?\nBecause Oct 31 == Dec 25!")
//            .lineLimit(1)
            .multilineTextAlignment(.center)
            .padding()
    }
}

#Preview {
    Ch3_CreateAMultilineTextView()
}
