//
//  ExceptionHandling.swift
//  DemoApp
//
//  Created by Mrinmoy Borah on 03/07/24.
//

import SwiftUI
import Foundation

class ExceptionManager{
    
    private var isActive: Bool = false
    
    func exceptionMessage() throws -> String {
        if(isActive){
            return "URL is Active"
        }
        else{
            throw URLError(.badServerResponse)
        }
    }
}

class ExceptionViewModel: ObservableObject{
    
    @Published var message: String = ""
    @Published var errorMessage: String = ""
    
    var manager: ExceptionManager = ExceptionManager()
    
    func manageData(){
        do{
            self.message = try manager.exceptionMessage()
        } catch {
            self.errorMessage = error.localizedDescription
        }
    }
}

struct ExceptionHandling: View {
    
    @StateObject var viewModel = ExceptionViewModel()
    
    var body: some View {
        
        VStack(spacing: 10){
            
            ZStack {
                Rectangle()
                    .frame(width: 240, height: 90)
                    .foregroundColor(.blue)
                
                VStack {
                    Text("Message")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text(viewModel.message)
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 240, height: 90)
                    .foregroundColor(.green)
                
                VStack {
                    Text("Error")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text(viewModel.errorMessage)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
            
            Button{
                viewModel.manageData()
            }label:{
                Text("Click here")
                    .frame(width: 100, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
        }
    }
}

#Preview {
    ExceptionHandling()
}
