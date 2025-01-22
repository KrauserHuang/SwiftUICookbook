//
//  Ch4_ApplyDynamicTypeTextStyles.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/22.
//

import SwiftUI

struct Ch4_ApplyDynamicTypeTextStyles: View {
    var body: some View {
        VStack {
            Text("The quick brown fox jumps over the lazy dog.")
                .font(.largeTitle)
                .foregroundStyle(.red)
                .padding()
            
            Text("Life is like riding a bicycle. To keep your balance, you must keep moving.")
                .font(.title)
                .foregroundStyle(.orange)
                .padding()
            
            Text("An apple a day keeps the doctor away, but only if you aim it well.")
                .font(.headline)
                .foregroundStyle(.yellow)
                .padding()
            
            Text("Success is not the key to happiness. Happiness is the key to success.")
                .font(.subheadline)
                .foregroundStyle(.green)
                .padding()
            
            Text("The only way to do great work is to love what you do.")
                .font(.callout)
                .foregroundStyle(.blue)
                .padding()
            
            Text("The only thing we have to fear is fear itself.")
                .font(.footnote)
                .foregroundStyle(.purple)
                .padding()
            
            Text("The best way to predict the future is to create it.")
                .font(.caption)
                .foregroundStyle(.pink)
                .padding()
        }
    }
}

#Preview {
    Ch4_ApplyDynamicTypeTextStyles()
}
