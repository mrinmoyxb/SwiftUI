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

import SwiftUI

struct Counter: View {
    var body: some View {
        
        @State var counter: Int = 0 //@ Property Wrapper
        Text("Counter Value: \(counter)")
    }
}

#Preview {
    Counter()
}
