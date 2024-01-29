//
//  Stacker.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.01.2024.
//

import SwiftUI

struct Stacker: View {
    @Binding var path: NavigationPath;
    var body: some View {
        VStack{
            NavigationLink(destination: Stacker(path: $path)){ Label("Spawn more", systemImage: "square.stack.3d.up.fill");
            }
            Button(action: {
                path.removeLast(path.count);
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

#Preview {
    Text("No preview")
    //@State var testPath: NavigationPath = NavigationPath.init();
    //Stacker(path: $testPath)
}
