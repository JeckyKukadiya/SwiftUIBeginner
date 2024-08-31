//
//  TabView.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct TabViews: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

#Preview {
    TabViews()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea(.container, edges: .top)
            VStack {
                TabView {
                    ForEach(icons, id: \.self) { icon in
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .padding(30)
                    }
                }
                .background(RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300))
                .frame(height: 300)
                .tabViewStyle(PageTabViewStyle())
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profle")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
        }
    }
}
