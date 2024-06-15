//
//  StateBinding.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 15/06/24.
//

import SwiftUI

struct StateBinding: View {
    
    @State var number: Int = 0
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.blue)
                .frame(width: 300, height: 300)
                
                Text("\(number)")
                    .foregroundColor(.white)
                    .font(.system(size: 100))
                    .bold()
            }
            
            HStack{
                Button(action: {number += 1}){
                    Text("Increment")
                        .padding()
                        .background(.black)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        
                }
                
                Button(action: {number = number>0 ? number - 1 : 0}){
                    Text("Decrement")
                        .padding()
                        .background(.black)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
            }
        }
            
    }
}

#Preview {
    StateBinding()
}
