//
//  ScrollView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 21/08/24.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        /*
        ScrollView {
            VStack {
                ForEach(0..<20) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                }
            }
        }
         */
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<25) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViews()
}
