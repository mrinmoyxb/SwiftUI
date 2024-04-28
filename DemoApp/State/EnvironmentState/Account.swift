//
//  Account.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 27/04/24.
//

import SwiftUI

struct Account: View {
    
    // environment object acting as a reference to the object we created in the ContentView
    //@StateObject var profile = ProfileClass()
    @EnvironmentObject var profile: ProfileClass
    
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
    Account()
}
