//
//  Ch3_UseXcodePreviews.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch3_UseXcodePreviews: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .padding()
            Button {
                print("Button tapped!")
            } label: {
                Text("Tap Me!")
            }
        }
    }
}

#Preview {
    Ch3_UseXcodePreviews()
}
