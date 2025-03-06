//
//  Ch11_CreateConsistentSwiftUIDesign.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/3/6.
//

import SwiftUI

struct Ch11_CreateConsistentSwiftUIDesign: View {
    
    @State private var isSelected = false
    @State private var changeColor = false
    
    var body: some View {
        VStack {
            Button {
                isSelected.toggle()
            } label: {
                Image(.transparentHedgy)
                    .renderingMode(.template) // set rendering mode to template
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(isSelected ? .brown : .red)
            }
            
            Image(.transparentHedgy)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundStyle(changeColor ? .purple : .red)
                .onAppear { // 當出現就會觸發
                    withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                        changeColor.toggle()
                    }
                }
        }
    }
}

#Preview {
    Ch11_CreateConsistentSwiftUIDesign()
}
