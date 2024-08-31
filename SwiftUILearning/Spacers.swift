//
//  Spacers.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 20/08/24.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        /*
        HStack(spacing: 0){
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.orange)
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.orange)
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
        }
        .background(.blue)
        //.padding(.horizontal, 200)
        .background(.blue)
        */
        VStack {
            HStack(spacing:0) {
                Image(systemName: "xmark")
                Spacer()

                Image(systemName: "gear")
            }
            .font(.title)
        .padding(.horizontal)
            Spacer()
            
            Rectangle()
                .frame(height: 55)
            
        }
    }
}

#Preview {
    Spacers()
}
