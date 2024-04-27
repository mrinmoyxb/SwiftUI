//
//  00_ObserveState.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 27/04/24.
//

import SwiftUI

struct AccountView: View {
    
    @ObservedObject var profile = Profile()
    var body: some View {
        VStack{
            if(profile.isLoggedIn){
                Text("Welcome back Successfully logged in !!")
            }
            else{
                Text("Please log in!!")
            }
            
            Button("Sign In"){
                //action
                profile.isLoggedIn = true
            }.frame(width: 150, height: 50)
                .font(.title)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            
            Button("Sign Out"){
                // action
                profile.isLoggedIn = false
            }.frame(width: 150, height: 50)
                .font(.title)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            
            // child view
            BalanceView()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    AccountView()
}
