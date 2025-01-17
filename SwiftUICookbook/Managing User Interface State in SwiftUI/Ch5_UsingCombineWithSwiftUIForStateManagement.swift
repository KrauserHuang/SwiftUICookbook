//
//  Ch5_UsingCombineWithSwiftUIForStateManagement.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI
import Combine

struct Ch5_UsingCombineWithSwiftUIForStateManagement: View {
    
    @StateObject private var jokeFetcher = JokeFetcher()
    
    var body: some View {
        VStack {
            Text(jokeFetcher.joke)
                .padding()
            
            Button("Fetch Joke") {
                jokeFetcher.fetchJoke()
            }
        }
        .onAppear {
            jokeFetcher.fetchJoke()
        }
    }
}

class JokeFetcher: ObservableObject {
    @Published var joke: String = ""
    private var subscriptions: Set<AnyCancellable> = []
    
    private let jokes = [
        "Why don't scientists trust atoms? Because they make up everything!",
        "Why did the bicycle fall over? Because it was two tired!",
        "Why don't some animals play cards? Because they are afraid of cheetahs!",
        "Why did the scarecrow win an award? Because he was outstanding in his field!"
    ]
    
    func fetchJoke() {
        // Network here
        if let randomJoke = jokes.randomElement() {
            joke = randomJoke
        }
    }
    
    deinit {
        subscriptions.forEach { $0.cancel() }
    }
}

#Preview {
    Ch5_UsingCombineWithSwiftUIForStateManagement()
}
