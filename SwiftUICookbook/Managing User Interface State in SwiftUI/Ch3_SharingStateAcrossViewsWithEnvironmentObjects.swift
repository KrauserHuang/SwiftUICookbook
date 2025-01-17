//
//  Ch3_SharingStateAcrossViewsWithEnvironmentObjects.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch3_SharingStateAcrossViewsWithEnvironmentObjects: View {
    var body: some View {
        GameView()
            .environmentObject(GameSettings())
    }
}

struct GameView: View {
    
    @EnvironmentObject var settings: GameSettings
    /*
     EnvironmentObject並不會提供初始值，一定要從他的階層中的某個地方提供一個實例。
     不然會crash
     */
    
    var body: some View {
        VStack {
            Text("Score: \(settings.score)")
            Button("Increase Score") {
                settings.score += 1
            }
        }
    }
}

class GameSettings: ObservableObject {
    @Published var score = 0
}

#Preview {
    Ch3_SharingStateAcrossViewsWithEnvironmentObjects()
}
