//
//  Ch6_AddAShadowToAnImage.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/2/6.
//

import SwiftUI

struct Ch6_AddAShadowToAnImage: View {
    var body: some View {
        VStack {
            Image(.coolCat)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
            
            Image(.birdDrinks)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .shadow(color: .red, radius: 20, x: 0, y: 2)
        }
    }
}

#Preview {
    Ch6_AddAShadowToAnImage()
}
