//
//  NavToolBar.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

struct NavToolBar: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.indigo.ignoresSafeArea()
                ScrollView {
                    TextField("Placeholder", text: $text)
                    Text("Hey")
                        .foregroundStyle(.white)
                }
            }
//            .navigationTitle("Toolbar")
//            .navigationBarItems(leading: Image(systemName: "heart.fill"), trailing: Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Tool Bar")
                        .font(.title)
                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    NavToolBar()
}
