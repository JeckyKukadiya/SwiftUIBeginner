//
//  NavigationView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 23/08/24.
//

import SwiftUI

struct NavigationViews: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello World!!") {
                    MyOtherScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(false)
            .navigationBarItems(leading:
                                    HStack {
                NavigationLink(destination: {
                    
                }, label: {
                  Image(systemName: "person.fill")
                })
                NavigationLink(destination: {
                    
                }, label: {
                    Image(systemName: "flame.fill")
                })
            }
                                    ,
            trailing: NavigationLink(destination: {
               MyOtherScreen()
            }, label: {
                Image(systemName: "gear")
            })
                .accentColor(.red)
            )
        }
        
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen!!")
                //.navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    dismiss()
                }
                NavigationLink("Click Here!!") {
                    Text("Third Screen!!")
                }
            }
        }
    }
}

#Preview {
    NavigationViews()
}
