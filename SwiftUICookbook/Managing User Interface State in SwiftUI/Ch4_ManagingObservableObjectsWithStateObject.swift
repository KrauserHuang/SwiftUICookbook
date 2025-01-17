//
//  Ch4_ManagingObservableObjectsWithStateObject.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch4_ManagingObservableObjectsWithStateObject: View {
    
    @StateObject private var timerManager = TimerManager()
    /*
     @StateObject is a property wrapper that creates an observable object with a lifecycle that is tied to the view that creates it. It will create a new instance of the TimerManager class and store it in the timerManager property.
     @StateObject用於參考類型(class)，遵循ObservableObject協議的對象
     @State單純用於儲存簡單的值類型(Int, String...)
     */
    
    var body: some View {
        VStack {
            Text("Timer count: \(timerManager.timerCount)!")
            
            Button("Start Timer") {
                timerManager.start()
            }
            
            Button("Stop Timer") {
                timerManager.stop()
            }
        }
    }
}

class TimerManager: ObservableObject {
    
    @Published var timerCount = 0
    private var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.timerCount += 1
        })
    }
    
    func stop() {
        timer.invalidate()
    }
}

#Preview {
    Ch4_ManagingObservableObjectsWithStateObject()
}
