//
//  shapes.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 04/05/24.
//

import SwiftUI

struct shapes: View {
    var body: some View {
        VStack{
            Spacer()
            Circle().frame(width: 100, height: 100)
                .foregroundColor(.green)
            Spacer()
            Rectangle().frame(width: 300, height: 300).cornerRadius(20).foregroundColor(.blue)
            Spacer()
            
            // gradient
            Rectangle()
                .fill(LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
                .frame(width: 300, height: 300)
                .cornerRadius(20)
        }.padding(10)
    }
}

#Preview {
    shapes()
}
