//
//  Ch1_LoadAnImage.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch1_LoadAnImage: View {
    var body: some View {
        // resizable() is used to make the image resizable
        // aspectRatio(contentMode:) is used to set the aspect ratio of the image
        // frame(maxWidth:maxHeight:) is used to set the maximum width and height of the image
        // .infinity是佔滿版面的意思
        Image(.hedgehogInClover)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
    }
}

#Preview {
    Ch1_LoadAnImage()
}
