//
//  Storage.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

struct Storage: View {
    
    @AppStorage("name") var currentUserName:String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            if let name = currentUserName {
                Text(name)
            }
            Button("Save"
                .uppercased()) {
                    let name = "Jecky"
            }
        }
        .onAppear {
            
        }
    }
}

#Preview {
    Storage()
}
