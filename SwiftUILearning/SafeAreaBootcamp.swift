//
//  SafeAreaBootcamp.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 21/08/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//            //Background
//            Color.blue
//                .ignoresSafeArea(.all)
//
//            //Foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .center)
                
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(
            Color.red
        )
    }
}

#Preview {
    SafeAreaBootcamp()
}
