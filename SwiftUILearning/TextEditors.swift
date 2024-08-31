//
//  TextEditors.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct TextEditors: View {
    
    @State var textEditorText:String = "This is the start text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor!!")
        }
        
    }
}

#Preview {
    TextEditors()
}
