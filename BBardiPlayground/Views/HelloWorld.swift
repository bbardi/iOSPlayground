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
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            Spacer();
            Label("", systemImage: "hand.wave.fill");
            Text(helloText ?? "I am loading be patient")
            Spacer();
            Button(action: {
                HelloAPI().getHello(){(msg) in helloText = msg}
            }, label: {
                Text("Fetch Message Again")
            })
        }
        .navigationTitle("Hello World API")
        .task {
            HelloAPI().getHello(){(msg) in
                helloText = msg
            }
        }
    }
}

#Preview {
    HelloWorld()
}
