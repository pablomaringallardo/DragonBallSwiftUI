//
//  DragonBallSwiftUIApp.swift
//  DragonBallSwiftUI
//
//  Created by Pablo Marín Gallardo on 31/10/23.
//

import SwiftUI

@main
struct DragonBallSwiftUIApp: App {
    @StateObject var rootViewModel = RootViewModel()
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(rootViewModel)
        }
    }
}
