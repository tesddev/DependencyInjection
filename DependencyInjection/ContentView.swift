//
//  ContentView.swift
//  DependencyInjection
//
//  Created by GIGL-MAC on 09/01/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        VStack {
            Button("Push 🥕") {
                let profile = Profile(name: "Alex")
                coordinator.push(.detail(profile: profile))
            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
