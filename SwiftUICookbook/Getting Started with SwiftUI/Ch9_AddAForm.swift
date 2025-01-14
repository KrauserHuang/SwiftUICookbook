//
//  Ch9_AddAForm.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch9_AddAForm: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    private func register() {
        // registration action
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Username", text: $name)
                    TextField("Email", text: $email)
                } header: {
                    Text("Personal Information")
                }
                
                Section(header: Text("Login Credentials")) {
                    SecureField("Password", text: $password)
                }
                
                Section {
                    Button {
                        register()
                    } label: {
                        Text("Register")
                    }
                }
            }
            .navigationTitle("Register")
        }
    }
}

#Preview {
    Ch9_AddAForm()
}
