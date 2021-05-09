//
//  GeometryExample.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct GeometryExample: View {
    var body: some View {
        
        VStack {
            //            GeometryReader { geometry in
            //                VStack {
            Text("width:, height: ")
            CatCloseup()
                .frame(width: 200, height: 200, alignment: .center)
            //                }
            //            }
            //            .border(Color.blue)
            //            .frame(alignment: .center)
            Text("Next Thing")
                .background(Color.yellow)
                .offset(x: 0, y: -100)
                .foregroundColor(.blue)
        }
        .background(Color.red.opacity(0.3))
    }
}

struct GeometryExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GeometryExample()
                .previewDevice(PreviewDevice(rawValue: "iPad (8th generation)"))
            
            GeometryExample()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        }
    }
}
