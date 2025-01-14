//
//  Ch8_AddAListView.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch8_AddAListView: View {
    
    let flags = ["🇩🇰", "🇫🇮", "🇮🇸", "🇳🇴", "🇸🇪"]
    
    var body: some View {
        // id represents a unique identifier for each item in the list
        // \.self means use string itself as the unique identifier
        List(flags, id: \.self) { flag in
            Text(flag)
                .font(.title2)
        }
    }
}

#Preview {
    Ch8_AddAListView()
}
