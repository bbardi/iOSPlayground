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
}

extension PlaygroundItem{
    static let entries : [PlaygroundItem] = [
        PlaygroundItem(title: "Hello API", desc: "Gets a Hello World message from an API and displays it"),
        PlaygroundItem(title: "Stacker", desc: "Toy around with the NavigationStack"),
        PlaygroundItem(title: "Missingno", desc: "An entry missing a getView case"),
        PlaygroundItem(title: "Unit Converter", desc: "Unit converter for first SwiftUI Challenge")
    ];
    @ViewBuilder
    static func getView(name: String, path: Binding<NavigationPath>) -> some View {
        switch name
        {
        case "Hello API":
            HelloWorld()
        case "Stacker":
            Stacker(path: path)
        case "Unit Converter":
            UnitConverter()
        default:
            Missingno()
        }
    }
}
