//
//  Platform.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 29/04/24.
//

import SwiftUI

struct PlatformScreen: View {
    
    var platforms: [Platform] = [.init(name: "Soup", image: "soup", color: .black),
                                 .init(name: "Airplane", image: "plane", color: .blue),
                                 .init(name: "Home", image:"home" , color: .green)]
    
    var body: some View {
        VStack{
            //NavigationStack{
                List{
                    Section("Options"){
                        ForEach(platforms, id: \.name){platform in
                            Label(
                                title: { Text(platform.name).foregroundColor(platform.color) },
                                icon: { Image(platform.image).resizable().scaledToFit().frame(width: 30, height: 20).foregroundColor(.black) }
                            )
                        }
                    }
                }
            }
        //}
        
    }
}

struct Platform{
    var name: String
    var image: String
    var color: Color
}

#Preview {
    PlatformScreen()
}


