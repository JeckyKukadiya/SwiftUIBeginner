//
//  AlertViews.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct AlertViews: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Button("BUTTON 1") {
                    alertType = .success
                    //alertTitle = "ERROR UPLOADING VIDEO"
                    //alertMessage = "The video could not be uploaded."
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .error
                    //alertTitle = "Successfully uploaded video 🥳"
                    //alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
                .alert(isPresented: $showAlert, content: {
                    //Alert(title: Text("There was an error"))
                    getAlert()
            })
            
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("There was an error."))
        case .error:
            return Alert(title: Text("This was a success."),
                         dismissButton: .default(Text("Ok")){
                backgroundColor = .green
            })
        case nil:
            return Alert(title: Text("ERROR"))
        }
//        return Alert(title: Text(alertTitle),
//        message: Text(alertMessage),
//              dismissButton: .default(Text("Ok")))
//        return Alert(title: Text("This is title!!"),
//                     message: Text("Here will be describe the message."),
//                     primaryButton: .destructive(Text("Delete"), action: {
//                   backgroundColor = .red
//               }),
//                     secondaryButton: .cancel())
    }
    
}

#Preview {
    AlertViews()
}
