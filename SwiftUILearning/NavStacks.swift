//
//  NavStacks.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

struct NavStacks: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    //To direct push add string else for main screen keep blank
    @State private var stackPAth: [String] = ["One"]
    
    var body: some View {
        NavigationStack(path: $stackPAth) {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super Segue!") {
                        stackPAth.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click Me \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav BootCamp")
            .navigationDestination(for: Int.self) { value in
                mySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN: \(value)")
            }
        }
    }
}

struct mySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavStacks()
}
