//
//  Ch6_CreateACircularView.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch6_CreateACircularView: View {
    var body: some View {
        Text("Hello,\nCircular View!")
            .multilineTextAlignment(.center)
            .padding(50)
            .background(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
            )
    }
}

#Preview {
    Ch6_CreateACircularView()
}
