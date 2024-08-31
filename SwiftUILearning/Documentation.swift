//
//  Documentation.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct Documentation: View {
    
    //MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    //MARK: BODY
    
    /*
     Working copy - things to do:
     1) Fix Title
     2) Fix Alert
     */
    
    var body: some View {
        NavigationStack {
            foregroundLayer
            .navigationTitle("Documentation!!")
            .navigationBarItems(trailing:
                                    Button("ALERT", action: {
                showAlert.toggle()
            })
            )
            .alert(isPresented: $showAlert, content: {
                getAlert(text: "This is the alert!")
            })
        }
    }
    ///This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView {
            VStack {
                Text("Hello")
                ForEach(data, id:\.self) { n in
                    Text(n)
                        .font(.headline)
                }
            }
        }
    }
    
    //MARK: FUNCTIONS
    
    ///Gets an alert with a specified text
    ///
    /// This function creates and returns an alert immediately.
    /// ```
    /// getAlert(text: "Hi") -> return Alert(title: Text("Hi"))
    /// ```
    /// - Warning: There is no additional message in this alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    
}

//MARK: PREVIEW

#Preview {
    Documentation()
}
