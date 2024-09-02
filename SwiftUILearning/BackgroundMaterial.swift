//
//  BackgroundMaterial.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

struct BackgroundMaterial: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                    Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            .animation(.default, value: UUID())
        }
        .ignoresSafeArea()
        .background(
            Image("car")
        )
    }
}

#Preview {
    BackgroundMaterial()
}
