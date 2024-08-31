//
//  BindingProperty.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 21/08/24.
//

import SwiftUI

struct BindingProperty: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingProperty()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonColor = .pink
            title = "NEW TITLE!!!"
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
            
        })
    }
}
