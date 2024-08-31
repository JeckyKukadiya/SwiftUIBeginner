//
//  PopOver.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 23/08/24.
//

import SwiftUI

struct PopOver: View {
    
    @State var showNewScreen = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1 - SHEET
            /*
            .sheet(isPresented: $showNewScreen, content: {
                NewScreen()
            })
            */
            //METHOD 2 - TRANSITION
            /*
            if showNewScreen {
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
            }
            */
            //METHOD - 3 ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            Button {
//                dismiss()
                showNewScreen.toggle()
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
    PopOver()
}
