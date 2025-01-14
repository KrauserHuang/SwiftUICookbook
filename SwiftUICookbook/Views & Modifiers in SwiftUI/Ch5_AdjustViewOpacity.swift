//
//  Ch5_AdjustViewOpacity.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch5_AdjustViewOpacity: View {
    var body: some View {
        VStack {
            Text("This text has full opacity")
            Text("This text has 50% opacity")
                .opacity(0.5)
        }
    }
}

#Preview {
    Ch5_AdjustViewOpacity()
}
