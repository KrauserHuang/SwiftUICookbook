//
//  Ch1_CreateAView.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch1_CreateAView: View {
    var body: some View {
        Text("Welcome to my first app!")
        // Below are call view modifiers
        // they are methods/functions that modify the view
            .font(.title)
            .foregroundStyle(.green)
    }
}

#Preview {
    Ch1_CreateAView()
}
