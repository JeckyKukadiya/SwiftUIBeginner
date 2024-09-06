//
//  macros.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 04/09/24.
//

import SwiftUI

@Observable class ObservableViewModel {
    var title: String = "Some Title"
}

struct macros: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack {
            Button(viewModel.title) {
                viewModel.title = "new Title"
            }
            SomeChildView(viewModel: viewModel)
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "asdfghjkl"
        }
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third View!!!"
        }
    }
}


#Preview {
    macros()
}
