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
            .clipShape(StarShape(points: 6, smoothness: 0.5))
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
            let angleIncrement = .pi * 2 / CGFloat(points)  // 計算每個尖角的角度間距（2π = 360º，假設points = 6，每個尖角的角度差就是60º）
            let rotationOffset = CGFloat.pi / 2             // 增加旋轉偏移量
            
            for point in 0..<points {
                // 每個point的外角度(eg. (60º * 0) - 90º = -90º, (60º * 1) - 90º = -30º...etc)
                // 第一個point的角度是-90º，第二個point的角度是-30º...etc
                let angle = angleIncrement * CGFloat(point) - rotationOffset
                // 每個point的內角度(eg. -90º + (60º / 2) = -60º, -30º + (60º / 2) = 0º...etc)
                let tippedAngle = angle + angleIncrement / 2
                
                // 直角座標x, y轉換成極座標
                // outerPointX = 中心x(起始點) + r * cosθ(cos角度)
                // outerPointY = 中心y(起始點) + r * sinθ(sin角度)
                let outerPointX = center.x + cos(angle) * outerRadius
                let outerPointY = center.y + sin(angle) * outerRadius
                
                let innerPointX = center.x + cos(tippedAngle) * innerRadius
                let innerPointY = center.y + sin(tippedAngle) * innerRadius
                
                let outerPoint = CGPoint(x: outerPointX, y: outerPointY)
                let innerPoint = CGPoint(x: innerPointX, y: innerPointY)
                
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
