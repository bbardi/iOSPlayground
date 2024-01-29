//
//  HelloAPI.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.01.2024.
//

import Foundation

class HelloAPI{
    let helloAPI = URL(string: "http://192.168.0.241:8080/api/hello")!
    
    func getHello(completion:@escaping (String) -> ()) {
        URLSession.shared.dataTask(with: helloAPI) {data,_,_ in
            if let data = data {
                let msg = String(decoding: data, as: UTF8.self);
                DispatchQueue.main.async {
                    completion(msg)
                }
            } else {
                DispatchQueue.main.async {
                    completion("Unable to get Hello message")
                }
            }
        }.resume()
    }
}
