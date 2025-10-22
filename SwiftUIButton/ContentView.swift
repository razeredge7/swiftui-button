//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Kevin on 15/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button{
            
        } label: {
            Text("Hello World")
                .background(.purple)
                .foregroundStyle(.white)
                .font(.title)
                .padding()
            
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
