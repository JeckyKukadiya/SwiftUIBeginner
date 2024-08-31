//
//  Initializer.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 20/08/24.
//

import SwiftUI

struct Initializer: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, title: Fruit) {
        self.count = count
        if title == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Peach"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case peach
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    Initializer(count: 100, title: .peach)
}
