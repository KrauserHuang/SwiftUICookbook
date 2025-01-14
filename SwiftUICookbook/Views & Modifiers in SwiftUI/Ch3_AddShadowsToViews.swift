//
//  Ch3_AddShadowsToViews.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch3_AddShadowsToViews: View {
    var body: some View {
        VStack {
            Text("Hello, Shadows!")
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 0, y: 0)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .shadow(color: .red, radius: 10, x: 0, y: 0)
        }
    }
}

#Preview {
    Ch3_AddShadowsToViews()
}
