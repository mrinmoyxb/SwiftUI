//
//  Counter.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 24/04/24.
//

// State:
// 1. It stores the value that the view depends on
// 2. State properties represent the values that can change
// 3. When the values of a state property change UI automatically recomputes itself

// Binding:
// 1. Put a $ in front of State property reference in our view code for binding
// 2. @Binding is a peoperty wrapper to indicate that it expects a binding to be passed to the view when an instance of the view is created

import SwiftUI

struct Counter: View {
    var body: some View {
        
        @State var counter: Int = 0 //@ Property Wrapper
        
        @State var counterVal: String = "" // For TextField binding
        // $counterVal: we can use $ sign when referencing a state property to allow a view component to change the value in a state property.
        
        VStack(alignment: .center){
            Text("Counter Value: \(counter)").font(.title).padding()
            TextField("Enter your age: ", text: $counterVal).font(.title).padding()
            Text("Age entered: \($counterVal)").font(.title).padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    Counter()
}
