//
//  Ch1_UnderstandingState&Binding.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch1_UnderstandingState_Binding: View {
    
    @State private var isSwitchOn: Bool = false
    @State private var selectedColor: Color = .red
    /*
     @State 為 property wrapper，讓我們可以在 struct 內部儲存和修改狀態。
     */
    
    var body: some View {
//        VStack {
//            Toggle(isOn: $isSwitchOn) {
//                Text("Turn me on or off")
//            }
//            
//            if isSwitchOn {
//                Text("The switch is on!")
//            }
//        }
//        .padding()
        VStack {
            Rectangle()
                .fill(selectedColor)
                .frame(width: 200, height: 200, alignment: .center)
            
            ColorPickerView(selectedColor: $selectedColor)
        }
        .padding()
    }
}

struct ColorPickerView: View {
    
    @Binding var selectedColor: Color
    /*
     @Binding create a 2-way connection between the parent and child views.
     it not only reads the selectedColor but also has the ability to change it.
     */
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    .fill(color)
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}

#Preview {
    Ch1_UnderstandingState_Binding()
}
