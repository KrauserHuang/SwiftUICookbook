//
//  Ch5_CreateACustomShapeForAnImage.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/2/4.
//

import SwiftUI

struct Ch5_CreateACustomShapeForAnImage: View {
    
    var body: some View {
        Image(.twoCapybaras)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(StarShape(points: 5, smoothness: 0.5))
    }
}

struct StarShape: Shape {
    let points: Int         // 要有幾個尖角
    let smoothness: CGFloat // 數值越大，尖角越圓滑
    
    func path(in rect: CGRect) -> Path {
        assert(points >= 2, "A star must have at least 2 points")
        
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let outerRadius = min(rect.width, rect.height) / 2  // 根據矩形叫小邊計算外圓半徑
        let innerRadius = outerRadius * smoothness          // 透過smoothness計算內圓半徑
        
        let path = Path { path in
            let angleIncrement = .pi * 2 / CGFloat(points)  // 計算每個尖角的角度間距（2π = 360º，假設points = 5，每個尖角的角度差就是72º）
            let rotationOffset = CGFloat.pi / 2             // 增加旋轉偏移量
            
            for point in 0..<points {
                // 每個point的外角度(eg. (72º * 0) - 90º = -90º, (72º * 1) - 90º = -18º...etc)
                let angle = angleIncrement * CGFloat(point) - rotationOffset
                // 每個point的內角度(eg. -90º + (72º / 2) = -54º, -18º + (72º / 2) = 18º...etc)
                let tippedAngle = angle + angleIncrement / 2
                
                let outerPoint = CGPoint(x: center.x + cos(angle) * outerRadius, y: center.y + sin(angle) * outerRadius)
                let innerPoint = CGPoint(x: center.x + cos(tippedAngle) * innerRadius, y: center.y + sin(tippedAngle) * innerRadius)
                
                if point == 0 {
                    path.move(to: outerPoint)
                } else {
                    path.addLine(to: outerPoint)
                }
                
                path.addLine(to: innerPoint)
            }
            
            path.closeSubpath()
        }
        return path
    }
}

#Preview {
    Ch5_CreateACustomShapeForAnImage()
}
