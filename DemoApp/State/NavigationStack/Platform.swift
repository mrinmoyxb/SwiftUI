//
//  Platform.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 29/04/24.
//

import SwiftUI

struct PlatformScreen: View {
    
    var platforms: [Platform] = [.init(name: "Soup", image: "soup", color: .black),
                                 .init(name: "Airplane", image: "plane", color: .pink),
                                 .init(name: "Home", image:"home" , color: .green)]
    
    var details: [Details] = [.init(description: "Hot and Healthy", ratings: 4.9),
                              .init(description: "Safe and Fast", ratings: 4.2),
                              .init(description: "Best place", ratings: 4.3)]
    
    @State private var path = NavigationPath()
    
    var body: some View {
        
        // 1. Navigation Stack
            NavigationStack{
                List{
                    Section("Options"){
                        ForEach(platforms, id: \.name){platform in
                            
                            // 2. Navigation Link is associated with data
                            NavigationLink(value: platform){
                                Label(
                                    title: { Text(platform.name).foregroundColor(platform.color) },
                                    icon: { Image(platform.image).resizable().scaledToFit().frame(width: 30, height: 20).foregroundColor(.black) }
                                )
                            }
                        }
                    }
                    Section("Details"){
                        ForEach(details, id: \.self){detail in
                            NavigationLink(value: detail){
                                LabeledContent(content: {Text(String(detail.ratings))}, label: {Text(detail.description)})
                            }
                        }
                    }
                }.navigationTitle("Travel & Tour")
                
                // 3. Destination Screen
                    .navigationDestination(for: Platform.self){platform in
                        ZStack{
                            platform.color.ignoresSafeArea()
                            VStack{
                                Label(
                                    title: { Text(platform.name).bold().font(.largeTitle).foregroundColor(.white) },
                                    icon: { Image(platform.image).resizable().scaledToFit().frame(width: 50, height: 50).foregroundColor(.white) }
                                )
                                List{
                                    ForEach(details, id: \.self){detail in
                                        NavigationLink(value: detail){
                                            LabeledContent(content: {Text(String(detail.ratings))}, label: {Text(detail.description)})
                                        }
                                    }
                                }
                            }
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                    }
                    .navigationDestination(for: Details.self){ detail in
                        HStack{
                            Text(String(detail.ratings))
                            Text(detail.description)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
            }
        }
}

struct Platform: Hashable{
    var name: String
    var image: String
    var color: Color
}

struct Details: Hashable{
    var description: String
    var ratings: Double
}

#Preview {
    PlatformScreen()
}


