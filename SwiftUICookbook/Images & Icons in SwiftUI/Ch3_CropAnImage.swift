//
//  Ch3_CropAnImage.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch3_CropAnImage: View {
    var body: some View {
        // .frame設定圖片的大小
        // .clipped()將圖片裁切到frame的大小
        VStack {
            Text("Cropping With Clipped")
                .font(.title)
            Image(.winterPup)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
                .border(.blue, width: 2)
        }
    }
}

#Preview {
    Ch3_CropAnImage()
}
