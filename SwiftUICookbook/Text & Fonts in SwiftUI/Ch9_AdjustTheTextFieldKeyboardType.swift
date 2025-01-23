//
//  Ch9_AdjustTheTextFieldKeyboardType.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch9_AdjustTheTextFieldKeyboardType: View {
    
//    @State private var cell: String = ""
//    
//    var body: some View {
//        TextField("Enter your cell number", text: $cell)
//            .multilineTextAlignment(.center)
//            .keyboardType(.phonePad)
//    }
    
    @State private var name: String = ""
    
    var body: some View {
        // submitLabel用於鍵盤上右下角的確認按鈕，預設是return
        // onSubmit為當按鈕按下後的動作
        TextField("Enter your name", text: $name)
            .keyboardType(.default)
            .submitLabel(.done)
            .onSubmit {
                print("Name entered: \(name)")
            }
    }
}

#Preview {
    Ch9_AdjustTheTextFieldKeyboardType()
}
