//
//  Navigation1.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 28/04/24.
//

import SwiftUI

struct NavigationScreen: View {
    var body: some View {
        VStack{
            NavigationStack{
                List{
                    NavigationLink("Next Screen"){
                        Text("Welcome to Next Screen!")
                    }
                }}
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    NavigationScreen()
}
