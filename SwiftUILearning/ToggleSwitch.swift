//
//  ToggleSwitch.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct ToggleSwitch: View {
    @State var toggleisOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleisOn ? "Online" : "Offline")
            }
            Toggle(isOn: $toggleisOn, label: {
                Text("Change Status")
            })
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleSwitch()
}
