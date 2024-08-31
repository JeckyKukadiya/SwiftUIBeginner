//
//  Steppers.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct Steppers: View {
    
    @State var stepperValue: Int = 10
    @State var widthInc: Int = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper:\(stepperValue)", value: $stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + CGFloat(widthInc), height: 100)
            Stepper("Steper 2") {
                //increment
                increment(amount: 100)
            } onDecrement: {
                //decrement
                increment(amount: -100)
            }

        }
    }
    
    func increment(amount:CGFloat) {
        withAnimation(.easeInOut) {
            widthInc += Int(amount)
        }
    }
}

#Preview {
    Steppers()
}
