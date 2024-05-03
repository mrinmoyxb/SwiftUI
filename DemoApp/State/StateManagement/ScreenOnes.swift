//
//  ScreenOne.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 03/05/24.
//

import SwiftUI

struct ScreenOnes: View {
    
    @ObservedObject var stateManagement: StateManagement = StateManagement()
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Welcome to State Management").bold().font(.title)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
            NavigationLink(destination: ScreenTwos(), label: {
                Text("Move to next screen")
                    .frame(width: 200, height: 55)
                    .background(.blue)
                    .bold()
                    .foregroundColor(.white)
                    
            })
            
        }.environmentObject(stateManagement)
            .navigationTitle("Home Screen")
    }
}

#Preview {
    ScreenOnes()
}
