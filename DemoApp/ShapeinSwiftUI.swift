//
//  ShapeinSwiftUI.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 19/04/24.
//

import SwiftUI

struct ShapeinSwiftUI: View {
    var body: some View {
        VStack{
            
            // Soup
            Rectangle()
                .fill(Color.black)
                .frame(width: 200, height: 200)
                .overlay(
                    HStack(alignment: .center, spacing: 0){
                    
                        Image("soup")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.white)
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                        Text("Soup").foregroundColor(Color.white).bold()
                            .font(.system(size: 30)).padding()
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                )
            
            // Home
            Rectangle().fill(Color.blue)
                .frame(width: 200, height: 200)
                .overlay(
                    HStack(alignment: .center, spacing: 0){
                        Image("home")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.white)
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                        Text("Home").foregroundColor(Color.white).bold()
                            .font(.system(size: 30)).padding()
                    })
            
            // Travel
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 200)
                .overlay(
                    HStack(alignment: .center, spacing: 0){
                        Image("plane")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.white)
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                        Text("Travel").foregroundColor(Color.white).bold()
                            .font(.system(size: 30)).padding()
                    }
                    
            )
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ShapeinSwiftUI()
}
