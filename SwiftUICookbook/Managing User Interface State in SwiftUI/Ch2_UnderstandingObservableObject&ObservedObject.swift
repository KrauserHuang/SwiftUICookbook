//
//  Ch2_UnderstandingObservableObject&ObservedObject.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch2_UnderstandingObservableObject_ObservedObject: View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Hello, \(settings.username)!")
            
            Button {
                settings.username = "BacBac"
            } label: {
                Text("Change Username")
            }
        }
    }
}

/*
 任何遵從ObservableObject協議的class都可以被標記成ObservedObject，在畫面上使用時，
 當ObservedObject的屬性發生變化時，畫面會自動更新。
 */
class UserSettings: ObservableObject {
    @Published var username = "Anonymous"
}

#Preview {
    Ch2_UnderstandingObservableObject_ObservedObject()
}
