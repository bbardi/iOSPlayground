//
//  ROT13.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 04.06.2024.
//

import SwiftUI

func Rot(_ input: String, _ value : Int) -> String {
    var res = "";
    for x in input.utf8{
        let k = Int(x)
        if(k >= 65 && k <= 90){
            if k+value > 90{
                res.append(Character(UnicodeScalar(k+value-26)!))
            }else {
                res.append(Character(UnicodeScalar(k+value)!))
            }
            continue
        }
        if(k >= 97 && k <= 122){
            if k+value > 122{
                res.append(Character(UnicodeScalar(k+value-26)!))
            }else {
                res.append(Character(UnicodeScalar(k+value)!))
            }
            continue
        }
        res.append(Character(UnicodeScalar(k)!));
    }
    return res;
}

struct ROT13: View {
    @State var inputText : String = "";
    @State var offset: Int = 13;
    var body: some View {
        Form{
            Section{
                TextField("Input",text: $inputText)
                Picker("Offset",selection: $offset){
                    ForEach(0...26, id: \.self){
                        Text(String($0))
                    }
                }
            }
            Section{
                Text(Rot(inputText,offset))
            }
        }
    }
}

#Preview {
    ROT13()
}
