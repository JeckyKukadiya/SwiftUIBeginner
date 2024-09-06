//
//  NativePopOver.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 04/09/24.
//

import SwiftUI

struct NativePopOver: View {
    
    @State private var showPop: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very Good",
        "Average",
        "Very Bad"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Spacer()
                Button("Provide Feedback") {
                    showPop.toggle()
                }
                .padding()
                .background(.yellow)
                .popover(isPresented: $showPop, attachmentAnchor: .point(.top), content: {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(feedbackOptions, id:\.self) { op in
                                Button(op) {
                                    
                                }
                                if op != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        }
                        .padding()
                    }
                    .presentationCompactAdaptation(.popover)
                    })
                        
            }
        }
    }
}

#Preview {
    NativePopOver()
}
