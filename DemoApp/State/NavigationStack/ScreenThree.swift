//
//  ScreenThree.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 01/05/24.
//

import SwiftUI

struct ScreenThree: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Welcome to Swift UI 😍").font(.title)
                Button("Get Back"){
                    dismiss()
                }.buttonStyle(.borderedProminent)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    ScreenThree()
}

