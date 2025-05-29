//
//  RoundedTextfield.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.05.2025.
//

import SwiftUI

struct RoundedTextfield: View {
    var label: String
    @Binding var text: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: .init(width: 10.0,height: 10.0)).fill(Color(UIColor.lightGray))
            TextField(label,text: $text)
        }.frame(width: 300, height: 50)
    }
}

#Preview {
    struct Prev: View{
        @State var string: String = ""
        var body: some View{
            RoundedTextfield(label: "Example",text: $string)
        }
    }
    return Prev()
}
