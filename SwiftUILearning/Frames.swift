//
//  Frames.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 20/08/24.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text("Hello, World!")
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
            //.frame(width: 300, height: 300, alignment: .center)
            //.background(.red)
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            //.background(.red)
    }
}

#Preview {
    Frames()
}
