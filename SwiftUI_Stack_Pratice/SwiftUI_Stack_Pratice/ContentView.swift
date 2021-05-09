//
//  ContentView.swift
//  SwiftUI_Stack_Pratice
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var listViewModel: ListViewModel
    @State private var isNavigationBarHidden = false
    
    var isAdded: Bool = true
    
    var body: some View {
        
        NavigationView{
            VStack(alignment: .leading, spacing: 0){
                
                HStack {
                    
                    NavigationLink(destination: MyList(isNavigationBarHidden: $isNavigationBarHidden)) {
                        Image(systemName: "line.horizontal.3")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }.padding(20)
                
                Text("정대리 할 일 목록")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                
                ScrollView{
                    
                    VStack {
                        MyProjectCard()
                        ForEach(0..<listViewModel.items.count) { (index)  in
                            listViewModel.items[index]
                        }
                       
                    }.padding()
                    .addImageAtBottomTrailing(isAdded, imageName: "plus.circle")
                }
                
            } // VStack
            .navigationTitle("back")
            .navigationBarHidden(isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
            
        } // navigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(listViewModel: ListViewModel.fullPreview())
    }
}

struct sfSymbolImage: View {
    
    let imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .font(.system(size: 35))
            .frame(width: 60, height: 60)
            .background(Color.yellow)
            .mask(Circle())
            .foregroundColor(.white)
            .shadow(radius: 20)
    }
}

extension View {
    func addImageAtBottomTrailing(_ isAdded: Bool, imageName: String) -> some View {
        ZStack(alignment: .bottomTrailing){
            self
            
            if isAdded {
                sfSymbolImage(imageName: imageName)
                    .offset(x: 0, y: 35)
                    .padding(.horizontal)
            }
        }
    }
}

