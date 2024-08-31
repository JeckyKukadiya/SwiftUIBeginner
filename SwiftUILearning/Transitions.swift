//
//  Transitions.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 22/08/24.
//

import SwiftUI

struct Transitions: View {
    
    @State var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.move(edge: .leading))
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .opacity.animation(.easeInOut)))
                    .animation(.easeInOut(duration: 0.5))
            }
        }
    }
}

#Preview {
    Transitions()
}
