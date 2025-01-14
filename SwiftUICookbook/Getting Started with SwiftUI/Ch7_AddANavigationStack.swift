//
//  Ch7_AddANavigationStack.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch7_AddANavigationStack: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to SwiftUI!")
                NavigationLink {
                    Ch7_AddANavigationStackDetailView()
                } label: {
                    Text("Go to Detail View")
                }
            }
            .navigationTitle("Getting Started")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar { // Add a toolbar item on navigation stack
                ToolbarItem(placement: .topBarTrailing) { // .navigationBarTrailing is deprecated, use .topBarTrailing
                    Button {
                        print("Settings tapped!")
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
        }
    }
}

struct Ch7_AddANavigationStackDetailView: View {
    var body: some View {
        Text("This is a detail view.")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    Ch7_AddANavigationStack()
}
