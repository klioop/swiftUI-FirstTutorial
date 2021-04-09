//
//  MyVStackView.swift
//  SwiftUIFirstTutorial
//
//  Created by klioop on 2021/04/09.
//

import SwiftUI

struct MyVStackView: View {
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                //                .font(.largeTitle)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        } // VStack
        .background(Color.red)
    }
}
