//
//  GithubSearchView.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 29.05.2025.
//

import SwiftUI

struct GithubSearchView: View {
    @State var username: String = "";
    @FocusState var isFocused: Bool;
    @State var fetchedUser: GithubUser? = nil;
    @State var showSheet: Bool = false;
    var body: some View {
        VStack{
                Image("GitHubLogo")
                Text("Plese enter a username")
                
                TextField("Username", text: $username)                .textFieldStyle(PlainTextFieldStyle())
                    .multilineTextAlignment(.center)
                    .focused($isFocused)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard){
                            Spacer()
                            Button("Done") {
                                isFocused = false
                            }
                        }
                    }
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color(UIColor.lightGray)))
                    .frame(width: 200)
            Spacer().frame(height: 100)
            Button(action: {
                GitHubAPI().fetchUser(username: username) { user,err  in
                    print(err)
                    self.fetchedUser = user
                    self.showSheet.toggle()
                }}
            ){
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.green)
                        .frame(width: 250, height: 50)
                    Text("Search").foregroundStyle(.white)
                }
                
            }
        }.sheet(isPresented:$showSheet){
            GitHubUserView(user:$fetchedUser, show: $showSheet)
                .presentationDetents(.init(Set([.fraction(0.30)])))
                
        }
    }
}

#Preview {
    GithubSearchView()
}
