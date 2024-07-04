//
//  SignUpView.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 04/07/24.
//

import SwiftUI

// sign up viewmodel
final class AuthenticationViewModel: ObservableObject{
    
    @Published var fullname: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    func signIn(){
        guard !fullname.isEmpty, !email.isEmpty, !password.isEmpty else{
            return
        }
        
        Task{
            do{
                let response = try await  AuthenticationManager.AuthManagerInstance.createUser(email: self.email, password: self.password)
                print("RESPONSE: \(response)")
            }catch{
                print("ERROR!: \(error.localizedDescription)")
            }
        }
    }
    
}


// UI
struct SignUpView: View {
    
    @StateObject var authViewModel = AuthenticationViewModel()
    
    var body: some View {
        VStack{
            Spacer()
            
            // heading
            Text("Create an account")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // username
            VStack(spacing: 10){
                TextField("Enter your full name", text: $authViewModel.fullname)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 55)
                    .background(Color(.systemGray3))
                    .cornerRadius(10)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                
                // email
                TextField("Enter your email", text: $authViewModel.email)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 55)
                    .font(.headline)
                    .foregroundColor(.black)
                    .background(Color(.systemGray3))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                // password
                SecureField("Enter your password", text: $authViewModel.password)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 55)
                    .font(.headline)
                    .foregroundColor(.black)
                    .background(Color(.systemGray3))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
            }
            
            Spacer()
            
            Button{
                authViewModel.signIn()
            }label:{
                Text("Sign Up")
                    .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                    .background(Color(.blue))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.black))
    }
}

#Preview {
    SignUpView()
}
