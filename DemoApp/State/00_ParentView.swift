//
//  BindingToggle.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 25/04/24.
//

import SwiftUI

struct ParentView: View {
    
    @State var buttonState: Bool = false
    
    var body: some View {
        VStack{
            Text("Color Blue").font(.title).bold()
                .foregroundColor(buttonState ? .blue: .black)
            Text("Color Green").font(.title).bold()
                .foregroundColor(buttonState ? .green: .black)
            ChildView(buttonState: $buttonState)
        }
    }
}

#Preview {
    ParentView()
}
