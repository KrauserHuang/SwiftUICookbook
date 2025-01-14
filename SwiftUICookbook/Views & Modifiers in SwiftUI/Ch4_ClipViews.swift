//
//  Ch4_ClipViews.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/14.
//

import SwiftUI

struct Ch4_ClipViews: View {
    var body: some View {
//        Text("Hello, ClipShape!")
//            .font(.headline)
//            .padding()
//            .background(.yellow)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
////            .clipShape(Capsule())
        VStack {
            Text("Circle")
                .frame(width: 200, height: 100)
                .font(.title)
                .background(.yellow)
                .clipShape(Circle())
            Text("Ellipse")
                .frame(width: 200, height: 100)
                .font(.title)
                .background(.green)
                .clipShape(Ellipse())
            Text("Capsule")
                .frame(width: 200, height: 100)
                .font(.title)
                .background(.blue)
                .clipShape(Capsule())
            Text("Custom")
                .frame(width: 200, height: 100)
                .font(.title)
                .background(.purple)
                .clipShape(Ch4_ClipViews_CustomShape())
        }
    }
}

struct Ch4_ClipViews_CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.closeSubpath()
        return path
    }
}
#Preview {
    Ch4_ClipViews()
}
