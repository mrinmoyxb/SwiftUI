//
//  AuthenticationManager.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 04/07/24.
//

import Foundation
import FirebaseAuth

// data model received from firebase
struct AuthDataResultModel{
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User){
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}


// firebase manager class to create a user or sign up
final class AuthenticationManager {
    
    static let AuthManagerInstance = AuthenticationManager()
    private init() {}
    
    // get user
    func getAuthUser() throws -> AuthDataResultModel{
        guard let authUser = Auth.auth().currentUser else{
            throw URLError(.badServerResponse)
        }
        
        return AuthDataResultModel(user: authUser)
    }
    
    // create user
    func createUser(email: String, password: String) async throws -> AuthDataResultModel {
        let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user: authResult.user)
    }
}
