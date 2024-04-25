//
//  CounterButton.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 25/04/24.
//

import SwiftUI

struct CounterButton: View {
    
    // State Property
    @State var counter: Int = 0
    
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            Text("Counter Value: \(counter)").font(.title)
            Spacer()
            // Increase in value of state property
            Button(action: {counter += 1}){
                Text("Increment")
                    .frame(width: 200, height: 50)
                    .font(.title).foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
            Button(action: {
                if(counter>0){
                    counter -= 1
                }
                else{
                    counter = 0
                }
            }){
                Text("Decrement")
                    .frame(width: 200, height: 50)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    CounterButton()
}
