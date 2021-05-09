//
//  OverlayExample.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct OverlayExample: View {
    var body: some View {
        
        VStack{
            CatCloseup()
        }
    }
}

struct OverlayExample_Previews: PreviewProvider {
    static var previews: some View {
        OverlayExample()
    }
}

struct CatCloseup: View {
    var body: some View {
        Image("cat1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .mask(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 20)
    }
}
