//
//  IntroView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 02/09/24.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    let transition1: AnyTransition = .asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top))
    let transition2: AnyTransition = .asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom))
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [.red, .yellow, .blue], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            //User is signed in
            //Profile View
            //else
            //onboarding View

            if currentUserSignedIn {
                ProfileView()
                    .transition(transition1)
            } else {
                OnBoardingView()
                    .transition(transition2)
            }
        }
        .animation(Animation.easeInOut(duration: 1.0), value: UUID())
    }
}

#Preview {
    IntroView()
}
