//
//  SwiftUIView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 8)
        let fruit2 = FruitModel(name: "Banana", count: 6)
        let fruit3 = FruitModel(name: "Watermelon", count: 10)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct ViewModel: View {
    
    
    //@StateObject -> USE THIS ON CREATION / INIT
    //@ObservedObject -> USE THIS FOR SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink(destination: {
                randomScreen(fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }))
        }
    }
}

struct randomScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModel()
}
