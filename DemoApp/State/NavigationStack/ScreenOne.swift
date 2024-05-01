//
//  ScreenOne.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 30/04/24.
//

import SwiftUI

struct ScreenOne: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink{
                    ScreenTwo()
                } label:{
                    Text("Click Here!")
                }.buttonStyle(.borderedProminent)
                
                NavigationLink{
                    ScreenThree()
                } label:{
                    Text("Click Here!")
                }.buttonStyle(.borderedProminent)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ScreenTwo: View{
    var body: some View{
        ZStack{
            Color.white.ignoresSafeArea()
            VStack{
                Text("Welcome to Travel & Tour").bold().foregroundColor(.black).font(.title)
                Text("Your only destination for travel").foregroundColor(.black)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ScreenOne()
}
