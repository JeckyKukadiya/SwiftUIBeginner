//
//  Sheets.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 23/08/24.
//

import SwiftUI

struct Sheets: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                .foregroundStyle(.green)
                .font(.headline)
                .padding(20)
                .background(.white)
                .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
            /*
            .fullScreenCover(isPresented: $showSheet, content: {
                ScondScreen()
            })
             */
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                .font(.headline)
                .padding(20)
            }
        }
    }
}

#Preview {
    //ScondScreen()
    Sheets()
}
