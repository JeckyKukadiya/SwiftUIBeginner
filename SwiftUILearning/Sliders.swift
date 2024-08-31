//
//  Sliders.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct Sliders: View {
    
    @State var sliderVal: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderVal)
                //"\(sliderVal)"
            )
            .foregroundStyle(color)
            //Slider(value: $sliderVal)
            //Slider(value: $sliderVal, in: 1...5)
            //Slider(value: $sliderVal, in: 1...5, step: 0.5)
            Slider(value: $sliderVal,
                   in: 1...5,
                   label: {
                Text("Title")
            }, minimumValueLabel: {
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.yellow)
            }, maximumValueLabel: {
                Text("5")
            }, onEditingChanged: { i in
                color = .green
            })
                .accentColor(.red)
        }
    }
}

#Preview {
    Sliders()
}
