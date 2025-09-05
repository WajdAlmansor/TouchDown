//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Wajd on 04/09/2025.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
