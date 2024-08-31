//
//  ColorPickers.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct ColorPickers: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            ColorPicker("Select a color",
                        selection: $bgColor, supportsOpacity: true)
            .padding()
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.white)
            .font(.headline)
            .padding(50)
            
        }
    }
}

#Preview {
    ColorPickers()
}
