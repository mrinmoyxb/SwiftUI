//
//  ScreenTwos.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 03/05/24.
//

import SwiftUI

struct ScreenTwos: View {
    
    @EnvironmentObject var stateManagement: StateManagement
    
    var body: some View {
        VStack{
            Text("Name: \(stateManagement.name)")
            Text("Name: \(stateManagement.age)")
        }
    }
}

#Preview {
    ScreenTwos()
}
