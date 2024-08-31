//
//  GradientBootCamp.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 16/08/24.
//

import SwiftUI

struct GradientBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //.red
                
                LinearGradient(gradient:
                Gradient(colors: [.red, .blue]), 
                               startPoint: .leading,
                               endPoint: .trailing)
                 
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200)
//                AngularGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .topLeading,
//                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootCamp()
}
