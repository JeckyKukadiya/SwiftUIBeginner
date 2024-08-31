//
//  ListViews.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 23/08/24.
//

import SwiftUI

struct ListViews: View {
    
    @State var isFruits = true
    @State var isVeggies = true
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach", "Kiwi", "Grapes"]
    @State var veggies: [String] = ["Tomato", "Potato", "Carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(isExpanded: $isFruits) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: dele)
                    .onMove(perform: mov)
                }
                    header: {
                        Text("Fruits")
                    }
                Section(isExpanded: $isVeggies) {
                    ForEach(veggies, id: \.self) { veg in
                        Text(veg.capitalized)
                    }
                }
                    header: {
                        Text("Veggie")
                    }
                }
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
                    
            )
                }
            }
    
    func dele(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func mov(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
}

#Preview {
    ListViews()
}
