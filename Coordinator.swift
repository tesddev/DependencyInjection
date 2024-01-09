//
//  Coordinator.swift
//  SwiftUICoordinator
//
//  Created by GIGL-MAC on 03/01/2024.
//

import SwiftUI

enum Page: Hashable, Equatable {
    case detail(profile: Profile)
    case content
}


class Coordinator: ObservableObject {
    @Published var path = NavigationPath()

    func push(_ page: Page) {
        path.append(page)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .detail(let profile):
            DetailView(profile: profile)
        case .content:
            ContentView()
        }
    }
}
