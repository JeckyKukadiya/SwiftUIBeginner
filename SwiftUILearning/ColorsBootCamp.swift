//
//  ColorsBootCamp.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 16/08/24.
//

import SwiftUI

struct ColorsBootCamp: View {
    let bgColor = Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
                //.primary
                //bgColor
                Color("CustomColor")
            )
            .frame(width: 200, height: 100)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootCamp()
}
