//
//  ControlGroupMenu.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 04/09/24.
//

import SwiftUI

struct ControlGroupMenu: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup("One") {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
                Button("Tres") {
                    
                }
            }
                Button("Two") {
                    
                }
            
                Menu("Three") {
                    Button("Hi") {
                        
                    }
                    Button("Hello") {
                        
                    }
                    Menu("Three") {
                        Button("Hi") {
                            
                        }
                        Button("Hello") {
                            
                        }
                    }
                }
            }
        }
}

#Preview {
    ControlGroupMenu()
}
