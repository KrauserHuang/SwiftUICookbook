//
//  Ch3_AddAnImageToAButton.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/3/24.
//

import SwiftUI

struct Ch3_AddAnImageToAButton: View {
    var body: some View {
        Button {
            //
        } label: {
            Image(.avocadoFriend)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
        }
    }
}

#Preview {
    Ch3_AddAnImageToAButton()
}
