//
//  AnimationTiming.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 22/08/24.
//

import SwiftUI

struct AnimationTiming: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(.spring(response: 3.0, dampingFraction: 0.5, blendDuration: 1.0 ), value: isAnimating)
                //.animation(Animation.linear(duration: timing), value: isAnimating)
            /*
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.easeIn(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.easeOut(duration: timing), value: isAnimating)
             */
        }
    }
}

#Preview {
    AnimationTiming()
}
