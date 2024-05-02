//
//  PushAPI.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 02.05.2024.
//

import Foundation

class PushAPI{
    let pushAPI = URL(string: "http://192.168.0.142:8080/api/notif")!;
    
    func pushToken(_ data: Data) {
        var request = URLRequest(url:pushAPI)
        request.httpMethod = "POST"
        request.httpBody = data.base64EncodedData();
        let task = URLSession.shared.dataTask(with: request)
        task.resume();
    }
}
