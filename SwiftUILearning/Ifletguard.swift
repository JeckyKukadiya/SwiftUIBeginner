//
//  Ifletguard.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct Ifletguard: View {
    @State var currentUserId: String? = "testUser123"
    @State var displaytext: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding.")
                if let text = displaytext {
                    Text(text)
                        .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
            Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displaytext = "This is the new text. User id is: \(userID)"
                isLoading = false
            }
        } else {
            displaytext = "Error. There is no User ID!."
        }
    }
    
    func loadData2() {
        guard let userID = currentUserId else {
            displaytext = "Error. There is no User ID!."
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displaytext = "This is the new text. User id is: \(userID)"
            isLoading = false
        }
    }
    
}

#Preview {
    Ifletguard()
}
