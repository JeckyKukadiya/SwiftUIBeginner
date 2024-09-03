//
//  Badges.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

//List
//TabView only

struct Badges: View {
    var body: some View {
        /*
         TabView {
             Color.red
                 .tabItem {
                     Image(systemName: "heart.fill")
                     Text("Hello")
                 }
                 .badge("New")
             Color.green
                 .tabItem {
                     Image(systemName: "heart.fill")
                     Text("Hello")
                 }
                 .badge(5)
             Color.yellow
                 .tabItem {
                     Image(systemName: "heart.fill")
                     Text("Hello")
                 }
         }
         */
        List {
            Text("Hello World")
                .badge(5)
            Text("Hello World")
                .badge("NEW ITEM")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
    }
}

#Preview {
    Badges()
}
