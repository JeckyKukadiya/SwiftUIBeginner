//
//  safeAreaInsets.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

struct safeAreaInsets: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe area inset")
            .overlay(
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
                
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
                
            }
        }
    }
}

#Preview {
    safeAreaInsets()
}
