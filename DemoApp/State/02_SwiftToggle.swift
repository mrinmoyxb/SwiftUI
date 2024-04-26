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
                Button("Light Mode", action: {currentState = false})
                    .buttonStyle(.borderedProminent).frame(width: 400)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).ignoresSafeArea()
        
    }
}

#Preview {
    SwiftToggle()
}
