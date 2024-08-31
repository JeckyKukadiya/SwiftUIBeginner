//
//  Stacks.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 20/08/24.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        /*
        ZStack(alignment: .center, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        })
         */
        /*
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.purple)
                    .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(.pink)
                    .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(.blue)
                    .frame(width: 25, height: 25)
                }
                .background(.white)
            }
            .background(.black)
        }
         */
        /*
        VStack {
            Text("5")
                .font(.largeTitle)
            Text("Items in your cart")
                .font(.caption)
                .foregroundColor(.gray)
        }
         */
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundStyle(.gray)
            }
            
            Text("1")
                .font(.title)
                .foregroundStyle(.gray)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    Stacks()
}
