//
//  StateManagement.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 03/05/24.
//

import Foundation

class StateManagement: ObservableObject{
    
    @Published var name: String = ""
    @Published var age: String = ""
}
