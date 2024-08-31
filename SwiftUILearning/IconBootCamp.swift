//
//  IconBootCamps.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 16/08/24.
//

import SwiftUI

struct IconBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            //.scaledToFill()
            .font(.title)
            //.font(.system(size: 200))
//            .foregroundStyle(.red)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconBootCamp()
}
