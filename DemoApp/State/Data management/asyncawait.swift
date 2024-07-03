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
            
            
            // bio
            Text("Name: \(viewModel.user.name)")
                .lineLimit(1)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    asyncawait()
}
