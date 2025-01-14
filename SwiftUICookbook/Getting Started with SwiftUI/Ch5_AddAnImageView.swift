//
//  Ch5_AddAnImageView.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch5_AddAnImageView: View {
    var body: some View {
        Image(.profile)
            .resizable() // make the image resizable
            .aspectRatio(contentMode: .fit) // maintain the aspect ratio of the image
            .frame(width: 200, height: 200) // set the size of the view to 200*200 pixels
            .clipShape(Circle()) // clip the image to a circle
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
//                    .shadow(radius: 7)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    Ch5_AddAnImageView()
}
