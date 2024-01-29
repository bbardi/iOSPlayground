//
//  HelloWorld.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.01.2024.
//

import SwiftUI

struct HelloWorld: View {
    @State private var helloText: String?
    var body: some View {
        VStack {
            Label("", systemImage: "hand.wave.fill");
            Text(helloText ?? "I am loading be patient")
        }
        .navigationTitle("Hello World API")
        .onAppear() {
            HelloAPI().getHello(){(msg) in
                helloText = msg
            }
        }
    }
}

#Preview {
    HelloWorld()
}
