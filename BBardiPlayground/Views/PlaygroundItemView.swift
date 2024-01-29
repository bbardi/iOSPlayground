//
//  PlaygroundItem.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 28.01.2024.
//

import SwiftUI

struct PlaygroundItemView: View {
    let name: String
    let desc: String
    var body: some View {
        VStack(alignment:.leading){
            Text(name)
                .font(.headline)
            Spacer()
            Text(desc)
        }
        .padding();
    }
}

#Preview {
    PlaygroundItemView(name: "Title",desc: "Test Description")
        .previewLayout(.fixed(width: 400, height: 60))
}
