//
//  BalanceView.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 27/04/24.
//

import SwiftUI

struct BalanceView: View {
    
    // Creating a new instance of profile hence both will not point to same isLoggedIn var
    @ObservedObject var profile = Profile()
    var body: some View {
        VStack{
            if(profile.isLoggedIn){
                Text("Balance: $9000000.00")
            }
            else{
                Text("Sign In : $XXXXXXXX")
            }
        }
    }
}

#Preview {
    BalanceView()
}
