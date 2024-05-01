//
//  Missingno.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 13.03.2024.
//

import SwiftUI

struct Missingno: View {
    let timer = Timer.publish(every:1,tolerance: 0.1,on: .main, in: .common).autoconnect();
    @State var display: Bool = true;
    var body: some View {
        VStack{
            Image(systemName: "questionmark.folder")
                .font(.largeTitle)
                .opacity(display ? 0 : 1.0)
            Text("No such view was found")}
        .onReceive(timer){ _ in
            withAnimation(.easeInOut){
                display = !display;
            }
        }
        
    }
}

#Preview {
    Missingno()
}
