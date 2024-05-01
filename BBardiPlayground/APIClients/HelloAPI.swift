//
//  HelloAPI.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.01.2024.
//

import Foundation
import Alamofire

class HelloAPI{
    let helloAPI = "http://192.168.0.241:8080/api/hello";
    
    func getHello(completion:@escaping (String) -> ()) {
        AF.request(helloAPI).responseString(){
            response in
            switch response.result{
            case .success(let res):
                completion(res)
            case .failure(_):
                completion("Unable to load message")
            }
        }
    }
}
