//
//  ContentView.swift
//  SwiftUIFirstTutorial
//
//  Created by klioop on 2021/04/09.
//

import SwiftUI



struct ContentView: View {
    
    @State private var isActivated = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    // 텝 제스처 추가
                    print("HStack clicked")
                    withAnimation {
                        isActivated.toggle()
                    }
                } //HStack
                
                // Navigation button
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("Navigation")
                        .font(.system(size: 40))
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(30)
                }.padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
