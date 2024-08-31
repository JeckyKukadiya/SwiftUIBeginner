//
//  Images.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 20/08/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("car")
            //.renderingMode(.template)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 100, height: 100)
            //.foregroundColor(.red)
            //.clipped()
            //.cornerRadius(100)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25)
                //Ellipse()
            //)
    }
}

#Preview {
    Images()
}
