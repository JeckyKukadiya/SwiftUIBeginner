//
//  Models.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followers: Int
    let isVerified: Bool
}


struct Models: View {
    
    @State var users: [UserModel] = [
        //"Jecky", "Deep", "Ravi", "Nick", "Jayraj"
        UserModel(displayName: "Jecky", userName: "jecky_00", followers: 5000, isVerified: true),
        UserModel(displayName: "Deep", userName: "deep_00", followers: 500, isVerified: false),
        UserModel(displayName: "Ravi", userName: "ravi_00", followers: 1000, isVerified: false),
        UserModel(displayName: "Nick", userName: "nick_00", followers: 500, isVerified: true),
        UserModel(displayName: "Jayraj", userName: "jay_00", followers: 2000, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users){ user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        VStack {
                            Text("\(user.followers)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("Users")
            }
        }
    }
}

#Preview {
    Models()
}
