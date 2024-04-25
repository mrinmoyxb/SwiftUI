//
//  CustomToggle.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 25/04/24.
//

import SwiftUI

struct CustomToggle: View {
    
    @State var isSwitchOn: Bool = true
    
    var body: some View {
        VStack{
            Button {
                isSwitchOn.toggle() // Toggle state on button click
            } label: {
                Toggle("toggle", isOn: $isSwitchOn)
            }
            
        }.padding()
    }
}
#Preview {
    CustomToggle()
}
