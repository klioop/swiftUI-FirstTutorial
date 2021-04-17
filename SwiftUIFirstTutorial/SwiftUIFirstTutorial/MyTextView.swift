//
//  MyTextView.swift
//  SwiftUIFirstTutorial
//
//  Created by klioop on 2021/04/09.
//

import SwiftUI

struct MyTextView: View {
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    // binding 을 위해선 생성자가 필요하다.
    init(isActivated: Binding<Bool> = .constant(false)) {
        // 기본값 생성
        _isActivated = isActivated
    }
    
    @State var index: Int = 0
    
    private let backgroundColors = [
        Color.yellow, Color.green, Color.blue, Color.purple
    ]
    
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("Background Index \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(self.isActivated))")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
            
        }
        .background(backgroundColors[index])
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
