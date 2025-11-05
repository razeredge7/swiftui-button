//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Kevin on 15/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Button{
                print("Delete Button Tapped")
            }
            
            label: {
                Label(
                    title: {
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "trash")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button{
                print("Share Button Tapped")
            }
            
            label: {
                Label(
                    title: {
                        Text("Share")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button{
                print("Delete Button Tapped")
            }
            
            label: {
                Label(
                    title: {
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button {
                
            } label : {
                Text("Buy me a coffee")
            }
            .tint(.purple)
            .buttonStyle(.bordered)
//            .buttonBorderShape(.roundedRectangle(radius: 5))
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}


struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundStyle(Color(.white))
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

#Preview {
    ContentView()
}
