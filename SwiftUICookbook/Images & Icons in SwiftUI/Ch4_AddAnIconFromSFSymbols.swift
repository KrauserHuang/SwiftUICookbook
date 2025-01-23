//
//  Ch4_AddAnIconFromSFSymbols.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch4_AddAnIconFromSFSymbols: View {
    var body: some View {
//        Image(systemName: "pawprint.circle.fill")
//            .font(.largeTitle)
//            .foregroundStyle(.blue)
        
//        VStack(spacing: 16) {
//            Image(systemName: "bell")
//                .symbolVariant(.slash)
//            
//            Image(systemName: "bell")
//                .symbolVariant(.square)
//            
//            Image(systemName: "bell")
//                .symbolVariant(.fill.slash)
//        }
//        .font(.largeTitle)
        
        TabView {
            Text("Your View Here")
                .tabItem {
                    Label("Home", systemImage: "house")
                        .symbolVariant(.none)
                }
            
            Text("Your Favorite Here")
                .tabItem {
                    Label("Favorite", systemImage: "heart")
                        .symbolVariant(.none)
                }
        }
    }
}

#Preview {
    Ch4_AddAnIconFromSFSymbols()
}
