//
//  Ch8_BlendTwoImagesTogether.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/2/6.
//

import SwiftUI

struct Ch8_BlendTwoImagesTogether: View {
    var body: some View {
        ZStack {
            Image(.sunriseTent)
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            
            Image(.wavyPattern)
                .resizable()
                .scaledToFill()
                .blendMode(.hue)
                .opacity(1.0)
        }
    }
}

#Preview {
    Ch8_BlendTwoImagesTogether()
}
