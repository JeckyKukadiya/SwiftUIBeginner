//
//  AsyncImageBootcamp.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/300")
    
    var body: some View {
        /*
        AsyncImage(url: url, content: { img in
            img
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
        }, placeholder: {
            ProfileView()
        })
            */
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let img):
                img
                    .resizable()
                    .scaledToFit().frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
