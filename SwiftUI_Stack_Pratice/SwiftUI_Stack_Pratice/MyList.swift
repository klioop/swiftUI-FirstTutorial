//
//  SwiftUIView.swift
//  SwiftUI_Stack_Pratice
//
//  Created by klioop on 2021/04/19.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
        List {
            
            Section(
                header: Text("Today").font(.headline).foregroundColor(.black),
                footer: Text("Footer")
                    
            ) {
                ForEach(0...2, id: \.self) { (index) in
                    MyCard(imageName: "calendar", title: "Card \(index)", time: "5-7", backgroundColor: UIColor.green)
                }
            }.listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("Tomorrow")) {
                ForEach(3...10, id: \.self) { (index) in
                    MyCard(imageName: "calendar", title: "Card \(index)", time: "5-7", backgroundColor: UIColor.blue)
                }
            }.listRowInsets(EdgeInsets.init(top: 10, leading: 30, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
            
        }
//        .listStyle(PlainListStyle())
        .listStyle(GroupedListStyle())
        .navigationTitle("내 목록")
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
