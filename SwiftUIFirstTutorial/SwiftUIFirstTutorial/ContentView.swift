//
//  ContentView.swift
//  SwiftUIFirstTutorial
//
//  Created by klioop on 2021/04/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack {
            MyVStackView()
            MyVStackView()
            MyVStackView()
            
        } //HStack
        .padding(10)
        .background(Color.yellow)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
