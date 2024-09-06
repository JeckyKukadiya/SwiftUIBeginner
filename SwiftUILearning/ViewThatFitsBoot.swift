//
//  ViewThatFitsBoot.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 04/09/24.
//

import SwiftUI

struct ViewThatFitsBoot: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        .padding(40)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBoot()
}
