//
//  ZStackExmaple.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct ZStackExmaple: View {
    var body: some View {
        
        ZStack(alignment: .bottomLeading){
            CatView()
            
            Text("Cats are awesome")
                .background(Color.yellow)
                .foregroundColor(.red)
                .padding()
        }
        
    }
}

struct ZStackExmaple_Previews: PreviewProvider {
    static var previews: some View {
        ZStackExmaple()
    }
}

struct CatView: View {
    var body: some View {
        Image("cat2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding([.leading,], 100)
    }
}
