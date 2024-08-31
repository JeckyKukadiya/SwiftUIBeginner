//
//  Buttons.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 21/08/24.
//

import SwiftUI

struct Buttons: View {
    
    @State var title = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press Me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            Button(action: {
                self.title = "Button #4 was pressed"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

#Preview {
    Buttons()
}
