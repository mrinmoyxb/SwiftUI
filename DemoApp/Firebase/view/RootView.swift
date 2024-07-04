//
//  RootView.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 04/07/24.
//

import SwiftUI

struct RootView: View {
    
    @State private var isSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            NavigationStack{
                Text("Setting")
            }
        }
        .onAppear{
            let authUser = try? AuthenticationManager.AuthManagerInstance.getAuthUser()
            self.isSignedIn = authUser==nil ? true : false
        }
        
        .fullScreenCover(isPresented: $isSignedIn, content: {
            NavigationStack{
                SignUpView()
            }
        })
    }
}

#Preview {
    RootView()
}
