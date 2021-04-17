//
//  MyVStackView.swift
//  SwiftUIFirstTutorial
//
//  Created by klioop on 2021/04/09.
//

import SwiftUI

struct MyVStackView: View {
    
    // @Binding 은 뷰 끼리 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    // binding 을 위해선 생성자가 필요하다.
    init(isActivated: Binding<Bool> = .constant(false)) {
        // 기본값 생성
        _isActivated = isActivated
    }
    
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
        .background(self.isActivated ? Color.green : Color.red)
    }
}


struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
