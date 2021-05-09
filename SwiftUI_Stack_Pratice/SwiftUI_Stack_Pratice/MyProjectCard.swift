//
//  MyProjectCard.swift
//  SwiftUI_Stack_Pratice
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct MyProjectCard: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
//            Rectangle().frame(height:0)
            
            Text("정대리 유튭 프로젝트")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 5)
            Text("10 AM - 11 Am")
                .foregroundColor(.secondary)
            
            Spacer().frame(height:10)
            HStack{
                
                CircleImage(imageName: "1")
                CircleImage(imageName: "2")
                CircleImage(imageName: "3")
                Spacer()
                
                Text("확인")
                    .frame(width: 80)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(20)
        
    }
}


struct CircleImage: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 50, height: 50)
            .mask(Circle())
            // .clipShape(Circle())
            .overlay(Circle().stroke(Color(.blue), lineWidth: 3))
    }
}


struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
