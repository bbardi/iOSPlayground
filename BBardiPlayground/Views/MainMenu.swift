//
//  ContentView.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 28.01.2024.
//

import SwiftUI

struct MainMenu: View {
    let entries : [PlaygroundItem]
    @State private var path : NavigationPath = NavigationPath();
    var body: some View {
        NavigationStack(path: $path){
            List(entries,id: \.title){ entry in
                NavigationLink(destination: entry.view){
                    PlaygroundItemView(name:entry.title,desc: entry.desc)
                }
                
            }
            .navigationTitle("Playground")
        }
    }
}

#Preview {
    MainMenu(entries: PlaygroundItem.entries)
}
