//
//  Ch7_BuildAGridOfViews.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch7_BuildAGridOfViews: View {
    
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10", "Item 11", "Item 12"]
    let columns = [
//        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    /*
     columns    → 列[↓]
     rows       → 行[→]
     LazyVGrid  → 垂直方向的网格
     spacing    → 间距
     */
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(items, id: \.self) { item in
                Text(item)
                    .frame(maxWidth: .infinity) // flexible width
                    .frame(height: 100)         // fixed height
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    Ch7_BuildAGridOfViews()
}
