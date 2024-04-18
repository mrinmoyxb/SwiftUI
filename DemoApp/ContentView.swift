//
//  ContentView.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 22/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello World!!!").foregroundStyle(Color.white).font(.title).padding().fontDesign(.rounded)
            Text("Hi").foregroundStyle(Color.white).font(.system(size: 32))
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color.black)
    }
}

#Preview {
    ContentView()
}
