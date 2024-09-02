//
//  Gestures.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

struct Gestures: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            })
            Text("TAP Gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    Gestures()
}
