//
//  TextInSwiftUI.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 18/04/24.
//

import SwiftUI

struct TextInSwiftUI: View {
    var body: some View {
        // Column/ Layout
        VStack{
            
            // Text
            Text("Welcome to SwiftUI").foregroundColor(.blue).font(.largeTitle)
                .bold().fontDesign(.rounded)
            Text("A modern approach towards UI").font(.system(size: 20)).foregroundColor(.black)
            Spacer().frame(height: 30)
            
            // Parent HStack
            HStack{
                
                // Child HStack - Home
                Spacer()
                HStack{
                    Image("home").resizable().scaledToFit().frame(width: 30, height: 30)
                    Text("Home")
                }
                Spacer()
                
                // Child HStack - Plane
                HStack{
                    Image("plane").resizable().scaledToFit().frame(width: 30, height: 30)
                    Text("Travel")
                }
                Spacer()
                
                // Child Stack - Food
                HStack{
                    Image("soup").resizable().scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Food")
                }
                Spacer()
                
                
            }.frame(maxWidth: .infinity)
            
            Spacer().frame(height: 60)
            Text("Developed By")
            Text("Mrinmoy Borah").tracking(10).font(.system(size: 15)).bold().foregroundColor(.gray).textCase(.uppercase)
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).padding()
    }
}

#Preview {
    TextInSwiftUI()
}
