//
//  BBardiPlaygroundApp.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 28.01.2024.
//

import SwiftUI

@main
struct BBardiPlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            MainMenu(entries: PlaygroundItem.entries)
        }
    }
}
