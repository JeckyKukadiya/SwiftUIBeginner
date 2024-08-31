//
//  BackgroundAndOverlay.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 20/08/24.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        /*
        Text("Hello, World!")
            .frame(width: 100, height: 100)
            .background(
                //.red
                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
)
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing)
                         )
                    .frame(width: 120, height: 120)
                    
            )
        */
        /*
        Circle()
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            )
            .background(
                Circle()
                    .fill(.purple)
                    .frame(width: 110, height: 110)
            )
         */
        /*
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                , alignment: .bottomTrailing
            )
         */
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x:0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("10")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .black, radius: 10, x:5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlay()
}
