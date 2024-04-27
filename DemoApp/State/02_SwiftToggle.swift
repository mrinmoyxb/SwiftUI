//
//  SwiftToggle.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 26/04/24.
//

import SwiftUI

struct SwiftToggle: View {
    
    @State var currentState: Bool = false
    
    var body: some View {
        ZStack{
            Color(currentState ? .black: .white)
            VStack{
                Button("Dark Mode", action: {currentState = true}).buttonStyle(.borderedProminent).frame(width: 400)
                LightButton(currentState: $currentState)
            }
                
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).ignoresSafeArea()
        
    }
}

struct LightButton: View{
    @Binding var currentState: Bool

    var body: some View{
        VStack{
            Button("Light Mode", action: {currentState = false})
                .buttonStyle(.borderedProminent).frame(width: 400)
            Text("\(currentState)").bold().foregroundColor(currentState ? .white: .black)
        }
    }
}

#Preview {
    SwiftToggle()
}
