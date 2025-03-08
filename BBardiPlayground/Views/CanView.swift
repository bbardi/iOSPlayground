//
//  CanViewâ.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 13.06.2024.
//
import PhotosUI
import SwiftUI

struct CanView: View {
    @State private var item: PhotosPickerItem?;
    @State private var image: Image?;
    var body: some View {
        PhotosPicker("Select something",selection: $item)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CanView()
}
