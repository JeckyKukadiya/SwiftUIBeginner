//
//  ConditionalStatements.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 21/08/24.
//

import SwiftUI

struct ConditionalStatements: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            /*
             Button("Circle Button: \(showCircle.description)") {
             showCircle.toggle()
             }
             Button("Rectangle Button: \(showRectangle.description)") {
             showRectangle.toggle()
             }
             
             if showCircle {
             Circle()
             .frame(width: 100, height: 100)
             } else if showRectangle {
             Rectangle()
             .frame(width: 100, height: 100)
             } else {
             RoundedRectangle(cornerRadius: 25.0)
             .frame(width: 200, height: 100)
             }
             }
             */
            Spacer()
        }
    }
}

#Preview {
    ConditionalStatements()
}
