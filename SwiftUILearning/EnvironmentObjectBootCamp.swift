//
//  EnvironmentObjectBootCamp.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Applewatch"])
    }
    
    
}

struct EnvironmentObjectBootCamp: View {
    
    @StateObject var viewmodel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewmodel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewmodel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
    }
}


struct FinalView: View {
    
    @EnvironmentObject var viewmodel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .blue, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewmodel.dataArray, id:\.self) { item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootCamp()
//    DetailView(selectedItem: "iPhone")
//    FinalView()
}
