//
//  GitHubUserView.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.05.2025.
//

import SwiftUI

struct GitHubUserView: View {
    @Binding var user: GithubUser?
    @Binding var show: Bool
    var body: some View {
/*            HStack {
                Button(action: {show = false}) {
                    Image(systemName: "xmark").resizable()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal)
                }
                Spacer()
            }*/
            if(user == nil){
                Text("No user found")
            }else{
                Text("You've found user: \(user!.login)")
                Text("Real name: \(user!.name)")
                AsyncImage(url: URL(string: user!.avatar_url)!) { image in
                    image.resizable()
                } placeholder: {
                    Text("Loading image")
                }
                .frame(width:100, height:100)
            }
        }
}

#Preview {
    struct prev: View {
        @State var user: GithubUser? = nil
        @State var show: Bool = true
        var body: some View {
            GitHubUserView(user: $user, show: $show)
        }
    }
    return prev()
}
