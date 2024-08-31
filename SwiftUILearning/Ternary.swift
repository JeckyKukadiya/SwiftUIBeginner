//
//  Ternary.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 21/08/24.
//

import SwiftUI

struct Ternary: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!!" : "ENDING STATE!!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 200 : 50,
                       height: isStartingState ? 400 : 50)
            Spacer()
        }
    }
}

#Preview {
    Ternary()
}
