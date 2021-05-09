//
//  FrameExample.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct FrameExample: View {
    var body: some View {
        
        VStack {
            
            CatView()
            CatCloseup()
                .frame(width: 200, height: 200, alignment: .center)
                .offset(x: 0, y: -100)
                .padding(.bottom, -100)
            
            Divider()
            Text("Next Thing")
            
//        Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct FrameExample_Previews: PreviewProvider {
    static var previews: some View {
        FrameExample()
    }
}
