//
//  Ch2_ShowImagesWithDifferentAspectRatios.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch2_ShowImagesWithDifferentAspectRatios: View {
    var body: some View {
        // .aspectRatio(2, contentMode: .fit) represents the width-to-height ratio of 2:1
        Image(.helloHedgy)
            .resizable()
            .aspectRatio(2, contentMode: .fit)
    }
}

#Preview {
    Ch2_ShowImagesWithDifferentAspectRatios()
}
