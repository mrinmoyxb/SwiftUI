//
//  TextInSwiftUI.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 18/04/24.
//

import SwiftUI

struct TextInSwiftUI: View {
    var body: some View {
        VStack{
            Text("Welcome to SwiftUI").foregroundColor(.white)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}

#Preview {
    TextInSwiftUI()
}
