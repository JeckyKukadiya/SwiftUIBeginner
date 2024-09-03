//
//  sheetResizable.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

struct sheetResizable: View {
    
    @State private var showSheet: Bool = false
    @State private var detens: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me!!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView(detens: $detens)
//                .presentationDetents([.medium, .large])
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
//                .presentationDetents([.fraction(0.1), .medium, .large])
//                .presentationDetents([.height(500)])
                
        })
        
    }
}

struct MyNextView: View {
    
    @Binding var detens: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 20) {
                Button("MEDIUM") {
                    detens = .medium
                }
                Button("LARGE") {
                    detens = .large
                }
            }
        }
        .presentationDetents([.medium, .large], selection: $detens)
    }
}

#Preview {
    sheetResizable()
}
