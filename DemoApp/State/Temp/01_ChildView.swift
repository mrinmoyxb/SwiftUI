//
//  ChildView.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 25/04/24.
//

import SwiftUI

struct ChildView: View {
    
    @Binding var buttonState: Bool
    // Binding property value doesn't hold any property on it's own, instead it takes the value of parent
    var body: some View {
        VStack{
            Toggle(isOn: $buttonState, label: {Text("Toggle")}).fixedSize().onTapGesture {
                buttonState.toggle()
            }
        }
    }
}

#Preview {
    ChildView(buttonState: .constant(true))
}
