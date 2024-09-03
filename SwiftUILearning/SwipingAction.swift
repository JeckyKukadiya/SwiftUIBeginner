//
//  SwipingAction.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

struct SwipingAction: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach", "Kiwi", "Grapes"]
    
    var body: some View {
        List {
            ForEach(fruits, id:\.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
        }
            
    }
    
    func delete(index: IndexSet) {
        
    }
}

#Preview {
    SwipingAction()
}
