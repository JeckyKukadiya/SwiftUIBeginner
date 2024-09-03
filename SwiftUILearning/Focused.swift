//
//  Focused.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 03/09/24.
//

import SwiftUI

struct Focused: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
//    @FocusState private var userNameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    @State var userName: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $userName)
                .focused($fieldInFocus, equals: .username)
//                .focused($userNameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP") {
                let usernameIsValid = !userName.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    userNameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    userNameInFocus = true
//                    passwordInFocus = false
                }
            }
        }
        .padding(40)
    }
}

#Preview {
    Focused()
}
