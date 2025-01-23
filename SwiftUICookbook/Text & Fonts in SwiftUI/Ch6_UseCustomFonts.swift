//
//  Ch6_UseCustomFonts.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch6_UseCustomFonts: View {
    var body: some View {
        Text("Rock Lobster")
            .font(.custom("Lobster-Regular", size: 36))
    }
}

#Preview {
    Ch6_UseCustomFonts()
}
