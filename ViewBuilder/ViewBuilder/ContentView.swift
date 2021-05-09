//
//  ContentView.swift
//  ViewBuilder
//
//  Created by klioop on 2021/04/19.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                // code here
                AlertView {
                    Image(systemName: "exclamationmark.bubble")
                        .resizable()
                        .frame(width: 65, height: 65)
                    Text("Here is a custom alert with view builder!")
                }
                
            } // VStack
            .navigationTitle("View Builders")
        }
        
    }
}

struct AlertView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content() // closure called()
    }
    
    var body: some View {
        
        VStack{
            
            content
                .padding()
            
            Divider()
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Cancle")
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Confirm")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                })
            }.padding()
            
            
        }.frame(width: UIScreen.main.bounds.size.width/2)
        .background(Color.blue)
        .cornerRadius(7)
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
