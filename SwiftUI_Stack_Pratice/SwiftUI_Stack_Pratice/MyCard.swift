//
//  SwiftUIView.swift
//  SwiftUI_Stack_Pratice
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct MyCard: View {
    
    let imageName: String
    let title: String
    let time: String
    let backgroundColor: UIColor
    
    var body: some View {
        
        HStack(spacing: 15) {
            
            Image(systemName: imageName)
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text("\(title)")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer().frame(height:5)
                Text("\(time)")
            }
            Spacer()
        }.padding()
        .background(Color(backgroundColor))
        .foregroundColor(.white)
        .cornerRadius(20)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(imageName:"calendar", title: "유튭 라이브 버닝", time: "8 PM ~ 10 PM", backgroundColor: UIColor.purple)
    }
}
