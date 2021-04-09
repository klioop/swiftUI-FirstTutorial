//
//  MyTextView.swift
//  SwiftUIFirstTutorial
//
//  Created by klioop on 2021/04/09.
//

import SwiftUI

struct MyTextView: View {
    
    @State var index: Int = 0
    
    private let backgroundColors = [
        Color.yellow, Color.green, Color.blue, Color.purple
    ]
    
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Background Index \(self.index)")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            Spacer()
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            
            print("Background clicked!")
            
            if index == backgroundColors.count - 1 {
                index = 0
            } else {
                index += 1
            }
            
            
        }
        
        
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
