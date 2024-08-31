//
//  TextBootCamp.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 16/08/24.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello, World!".uppercased().capitalized)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
//            .fontWeight(.semibold)
//            .bold()
//            .underline(pattern: .dashDot, color: .green)
//            .italic()
//            .strikethrough(pattern: .dash, color: .red)
            .baselineOffset(10)
            .kerning(1)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 200, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootCamp()
}
