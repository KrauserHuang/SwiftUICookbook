//
//  Ch2_CustomizeViewBackground&Border.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch2_CustomizeViewBackground_Border: View {
    var body: some View {
        Text("Hello, World!")
            .frame(width: 200, height: 50)
            .background(
                Image(.background)
                    .resizable(resizingMode: .tile) // that image to adjust its size to fit the dimensions of the view
                    .opacity(0.25)
            )
            .fontWeight(.heavy)
            .border(.black, width: 2)
    }
}

#Preview {
    Ch2_CustomizeViewBackground_Border()
}
