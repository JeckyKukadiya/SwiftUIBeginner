//
//  ContentUnavailable.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 04/09/24.
//

import SwiftUI

struct ContentUnavailable: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ContentUnavailableView.search
                    .background(.green)
                ContentUnavailableView.search(text: "abc")
                    .background(.yellow)
                ContentUnavailableView("No Internet Connection", systemImage: "wifi.slash", description: Text("Please connect to the internet and try again."))
                    .background(.red)
            }
        }
    }
}

#Preview {
    ContentUnavailable()
}
