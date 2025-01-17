//
//  Ch9_AddACustomShapeToAView.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/17.
//

import SwiftUI

struct Ch9_AddACustomShapeToAView: View {
    var body: some View {
        DiamondShape()
            .fill(.red)
            .frame(width: 200, height: 200)
    }
}

/*
 Create a custom shape by conforming to the Shape protocol.
 */

struct DiamondShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.width / 2, y:  rect.height / 2)
        
        path.move(to: CGPoint(x: center.x, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: center.y))
        path.addLine(to: CGPoint(x: center.x, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: center.y))
        path.addLine(to: CGPoint(x: center.x, y: 0))
        
        return path
    }
}

#Preview {
    Ch9_AddACustomShapeToAView()
}
