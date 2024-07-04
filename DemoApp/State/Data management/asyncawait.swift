//
//  asyncawait.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 03/07/24.
//

import SwiftUI
import Foundation

struct GithubUser: Codable{
    let login: String
    let name: String
    let avatar_url: String
    let followers: Int
    let following: Int
    let bio: String
}

enum APIError: Error{
    case InvalidUrl
    case BadResponse
}

class APIManager{
    
    func getUserData() async throws -> GithubUser {
        let api: String = "https://api.github.com/users/mrinmoyxb"
        guard let url = URL(string: api) else{
            throw APIError.InvalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw APIError.BadResponse
        }
        
        let gitUser = try JSONDecoder().decode(GithubUser.self, from: data)
        return gitUser
    }
}

class GithubUserViewModel: ObservableObject{
    
    @Published var user: GithubUser = GithubUser(login: "", name: "", avatar_url: "", followers: 0, following: 0, bio: "")
    @Published var userError: String =  ""
    private var apiManager = APIManager()
    
    init(){
        Task{
            do{
                let fetchedUserData = try await apiManager.getUserData()
                DispatchQueue.main.async{
                    self.user = fetchedUserData
                }
            }
            catch{
                let errorMessage = error.localizedDescription
                DispatchQueue.main.async{
                    self.userError = errorMessage
                }
            }
        }
    }
}

struct asyncawait: View {
    
    @StateObject var viewModel: GithubUserViewModel = GithubUserViewModel()
    
    var body: some View {
        VStack{
            // heading
            Text("Github Portfolio")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
                .padding(.horizontal)
            
            // profile pic
//            AsyncImage(url: URL(string: viewModel.user.avatar_url ?? "")) { image in
//                Image(image)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 150, height: 150)
//            } placeholder: {
                Circle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            //}

            
            // bio
            Text("\(viewModel.user.name)")
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(1)
                .multilineTextAlignment(.center)
            
            Text("\(viewModel.user.bio)")
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color(.systemGray))
                .lineLimit(1)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 10){
                ZStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 50)
                        .cornerRadius(10)
                        .foregroundColor(Color(.green))
                    
                    VStack(spacing: 1){
                        Text("\(viewModel.user.followers)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("Followers")
                            .font(.footnote)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 50)
                        .cornerRadius(10)
                        .foregroundColor(Color(.green))
                    
                    VStack(spacing: 1){
                        Text("\(viewModel.user.following)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("Following")
                            .font(.footnote)
                    }
                }
            }
            
        }
    }
}

#Preview {
    asyncawait()
}
