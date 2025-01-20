//
//  Ch6_UsingAppStorage&SceneStorageForPersistentState.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch6_UsingAppStorage_SceneStorageForPersistentState: View {
    // MARK: - AppStorage
//    @AppStorage("username") var username: String = "Anonymous"
//    
//    var body: some View {
//        VStack {
//            Text("Hello, \(username)!")
//            
//            Button("Login") {
//                username = "abc"
//            }
//        }
//    }
    // MARK: - SceneStorage
    @SceneStorage("selectedTab") var selectedTab: String?
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag("Tab1")
            
            Text("Favorite")
                .tabItem {
                    Label("Favorite", systemImage: "heart")
                }
                .tag("Tab2")
        }
    }
}

#Preview {
    Ch6_UsingAppStorage_SceneStorageForPersistentState()
}
