//
//  NavSplitView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 04/09/24.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, visionOS

struct NavSplitView: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .automatic
    @State private var selectedCat: FoodCategory? = nil
    @State private var selectedFruit: Fruits? = nil

    
    var body: some View {

        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id:\.rawValue, selection: $selectedCat) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
//            List {
//                ForEach(FoodCategory.allCases, id:\.rawValue) { cat in
//                    Button(cat.rawValue.capitalized) {
//                        selectedCat = cat
//                    }
//                }
//            }
        } content: {
            if let selectedCat {
                Group {
                    switch selectedCat {
                    case .fruits:
                        List(Fruits.allCases, id:\.rawValue, selection: $selectedFruit) { fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCat.rawValue.capitalized)
            } else {
                Text("Select a category to begin")
            }
        } detail: {
            if let selectedFruit {
                Text("You selected \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select Something")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavSplitView()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruits: String, CaseIterable {
    case apple, banana, orange
}
