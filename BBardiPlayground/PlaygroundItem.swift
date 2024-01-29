//
//  PlaygroundItem.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.01.2024.
//

import Foundation
import SwiftUI

struct PlaygroundItem {
    var title: String;
    var desc: String;
    var view: AnyView;
}

extension PlaygroundItem{
    static let entries : [PlaygroundItem] = [
        PlaygroundItem(title: "Hello API", desc: "Gets a Hello World message from an API and displays it", view: AnyView(HelloWorld())),
        PlaygroundItem(title: "Test2", desc: "Test decription2", view: AnyView(Text("Hello World2"))),
    ]
}
