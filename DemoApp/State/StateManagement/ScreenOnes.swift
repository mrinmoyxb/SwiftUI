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
                // heading
                Text("Welcome to State Management").bold().font(.title).multilineTextAlignment(.center)
                
                // text field
                TextField("Enter name", text: $stateManagement.name)
                    .padding(.horizontal, 50)
                    .padding()
                
                // text field
                TextField("Enter age", text: $stateManagement.name)
                    .padding(.horizontal, 50)
                    .padding()
                
                // navigation link
                NavigationLink(destination: ScreenTwos(), label: {
                    Text("Move to next screen")
                        .frame(width: 200, height: 55)
                        .background(.blue)
                        .bold()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                })
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }.environmentObject(stateManagement)
            .navigationTitle("Home Screen")
    }
}

#Preview {
    ScreenOnes()
}
