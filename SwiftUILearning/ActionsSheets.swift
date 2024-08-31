//
//  ActionsSheets.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct ActionsSheets: View {
    
    @State var showConfirmation: Bool = false
    @State var background: Color = .yellow
    
    var body: some View {
        ZStack {
            background.ignoresSafeArea()
            Button("Click Me!!") {
                showConfirmation.toggle()
            }
            .confirmationDialog("Are you sure?", isPresented: $showConfirmation, titleVisibility: .visible) {
                Button("Ok", role: .destructive) {
                    background = .red
                }
                Button("Delete", role: .destructive) {
                    
                }
            }
        }
    }
    
}

#Preview {
    ActionsSheets()
}
