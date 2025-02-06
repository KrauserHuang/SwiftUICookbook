//
//  Ch9_UseAnimatedImages.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/2/6.
//

import SwiftUI

struct Ch9_UseAnimatedImages: View {
    // @State is a property wrapper that allows us to modify the value of a property within a view
    @State private var isAnimating = false
    
    var body: some View {
        Image(.helloHedgy)
            .resizable()
            .scaledToFit()
            .scaleEffect(isAnimating ? 1.5 : 1.0)
            .onAppear { // 畫面出現就會觸發
                // closure的動作變化都會以.easeInOut的方式進行，並且每次動作都會持續1秒，持續重複，並且會自動反轉
                withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                    isAnimating = true
                }
            }
        // 還有rotations/fades/translations等等的動畫效果
    }
}

#Preview {
    Ch9_UseAnimatedImages()
}
