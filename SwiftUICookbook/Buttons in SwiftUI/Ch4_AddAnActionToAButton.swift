//
//  Ch4_AddAnActionToAButton.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/3/25.
//

import SwiftUI

struct Ch4_AddAnActionToAButton: View {
    var body: some View {
        Button("Tap Me!") {
            buttonTapped()
        }
    }
    // 可以把action拉出來
    func buttonTapped() {
        print("Button was tapped!")
    }
}

#Preview {
    Ch4_AddAnActionToAButton()
}
