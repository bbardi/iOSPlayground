//
//  GitHubAPI.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.05.2025.
//

import Foundation

struct GithubUser: Decodable {
    var login: String
    var name: String
    var avatar_url: String
}
extension GithubUser {
    static let sample: GithubUser = .init(
        login: "bogdanbardi",
        name: "Bogdan Bardi",
        avatar_url: "https://avatars.githubusercontent.com/u/5119968?v=4"
    )
}

public class GitHubAPI {
    let baseURL: String = "https://api.github.com/users/"
    func fetchUser(username: String,completion: @escaping (GithubUser?, String?)->Void){
        URLSession.shared.dataTask(with: URL(string: baseURL+username)!) {data,_,_ in
            if let data = data {
                guard let user = try? JSONDecoder().decode(GithubUser.self, from: data) else {
                    DispatchQueue.main.async {
                        completion(nil,"Unable to decode user")
                    }
                    return
                }
                DispatchQueue.main.async {
                    completion(user,nil)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil,"Unable to fetch user")
                }
            }
        }.resume()
    }
}
