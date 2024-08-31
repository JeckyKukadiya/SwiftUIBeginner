//
//  ShapesBootCamp.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 16/08/24.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            //.fill(.green)
            //.foregroundColor(.pink)
            .stroke()
            //.stroke(.red, lineWidth: 0.8)
            //.stroke(.orange, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
            //.trim(from: 0.3, to: 1.0)
            //.stroke(.purple, lineWidth: 20)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootCamp()
}
