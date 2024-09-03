//
//  Groups.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

struct Groups: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
                .font(.caption)
                .foregroundStyle(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    Groups()
}
