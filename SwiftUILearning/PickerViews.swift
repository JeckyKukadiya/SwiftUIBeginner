//
//  PickerViews.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct PickerViews: View {
    
    @State var selectedText: String = ""
    let options: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attr: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attr, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selectedText) {
            ForEach(options.indices, id: \.self) { i in
                Text(options[i])
                    .tag(options[i])
            }
        } label: {
            
        }
        .pickerStyle(SegmentedPickerStyle())
        //.background(.red)

        Menu {
                Picker(selection: $selectedText, label: EmptyView()) {
                    ForEach(options, id:\.self) { op in
                        HStack {
                            Text(op)
                            Image(systemName: "heart.fill")
                        }
                        .tag(op)
                    }
                }
                } label: {
                    customLabel
                }

        VStack {
            HStack {
                Text("Age:")
                Text(selectedText)
            }
            Picker(selection: $selectedText) {
//                Text("1").tag("1")
//                Text("2").tag("2")
//                Text("3").tag("3")
//                Text("4").tag("4")
//                Text("5").tag("5")
//                Text("6").tag("6")
                ForEach(18..<100) { number in
                    Text("\(number)")
                        .font(.headline)
                        .foregroundColor(.red)
                        .tag("\(number)")
                        
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(WheelPickerStyle())
        }
    }
    
    var customLabel: some View {
        HStack {
            Text("Filter:")
            Text(selectedText)
        }
        .font(.headline)
        .foregroundStyle(.white)
        .padding()
        .padding(.horizontal)
        .background(.blue)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 10)
    }
}



#Preview {
    PickerViews()
}
