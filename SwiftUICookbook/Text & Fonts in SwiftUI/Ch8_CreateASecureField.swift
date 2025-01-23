//
//  Ch8_CreateASecureField.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/23.
//

import SwiftUI

struct Ch8_CreateASecureField: View {
    
    @State private var password: String = ""
    
    var body: some View {
        SecureField("Enter your password", text: $password)
            .textContentType(.password)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .stroke()
            )
            .multilineTextAlignment(.center)
    }
}

#Preview {
    Ch8_CreateASecureField()
}
