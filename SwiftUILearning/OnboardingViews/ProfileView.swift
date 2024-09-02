//
//  ProfileView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) old.")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
            
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        .onTapGesture {
            signOut()
        }
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
    
}

#Preview {
    ProfileView()
}
