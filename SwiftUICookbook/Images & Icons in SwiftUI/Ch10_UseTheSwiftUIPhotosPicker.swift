//
//  Ch10_UseTheSwiftUIPhotosPicker.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/2/10.
//

import SwiftUI
import PhotosUI // module for PhotosPickers

struct Ch10_UseTheSwiftUIPhotosPicker: View {
    
    // 從PhotosPicker選擇的項目，PhotosPickerItem是從相簿選擇的圖片
    @State private var selectedItems = [PhotosPickerItem]()
    // 透過UUID來存儲圖像
    @State private var images = [UUID: Image]()
    
    private func loadImages(from items: [PhotosPickerItem]) async {
        for item in items {
            do {
                // loadTransferable(type:)是一個異步函數，將PhotosPickerItem轉換成Imagee
                let image = try await item.loadTransferable(type: Image.self)
                if let image = image {
                    images[UUID()] = image
                }
            } catch {
                print("Failed to load image: \(error)")
            }
        }
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(Array(images.keys), id: \.self) { key in
                        if let image = images[key] {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipped()
                        }
                    }
                }
            }
            
            VStack {
                Spacer()
                PhotosPicker(selection: $selectedItems, matching: .images) {
                    Text("Select Images")
                }
                .task(id: selectedItems) {
                    await loadImages(from: selectedItems)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Ch10_UseTheSwiftUIPhotosPicker()
}
