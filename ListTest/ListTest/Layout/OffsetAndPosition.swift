//
//  OffsetAndPosition.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct OffsetAndPosition: View {
    var body: some View {
        
        ZStack{
            
            Text("x")
                .border(Color.red)
                .offset(x: 300, y: 0)
            
            Text("X")
                .offset(x: 10.0, y: 10.0)
                .position(x: 315, y: 0)
                .background(Color.red)
                .frame(width: 30, height: 30)
                
            
            
        }
        .frame(width: 300, height: 400, alignment: Alignment.topLeading)
        .background(Color.gray.opacity(0.4))
        
        
    }
}

struct OffsetAndPosition_Previews: PreviewProvider {
    static var previews: some View {
        OffsetAndPosition()
    }
}
