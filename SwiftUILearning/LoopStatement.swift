//
//  LoopStatement.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 21/08/24.
//

import SwiftUI

struct LoopStatement: View {
    
    let data: [String] = ["Hi", "Hello", "Hey Everyone"]
    let myString = "Hello"
    
    var body: some View {
        VStack {
            
            ForEach(0..<data.count, id: \.self) { index in
                Text("Hi: \(data[index])")
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Index is: \(index)")
                }
            }
             
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    LoopStatement()
}
