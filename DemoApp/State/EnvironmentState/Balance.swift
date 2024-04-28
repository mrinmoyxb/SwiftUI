//
//  Balance.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 27/04/24.
//

import SwiftUI

struct Balance: View {
    
    @EnvironmentObject var profile: ProfileClass
    
    var body: some View {
        VStack{
            if(profile.isLoggedIn==true){
                Text("Balance: $9000000.00")
            }
            else{
                Text("Sign In : $XXXXXXXX")
            }
        }
    }
}

#Preview {
    Balance()
}
