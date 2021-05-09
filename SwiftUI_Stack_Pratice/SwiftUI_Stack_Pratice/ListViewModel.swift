//
//  ViewModel.swift
//  SwiftUI_Stack_Pratice
//
//  Created by klioop on 2021/04/18.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [MyCard] = []
    
    init() {
        
    }
    
    static func fullPreview() -> ListViewModel {
        
        let viewModel = ListViewModel()
        
        viewModel.items = [
            MyCard(imageName: "calendar", title: "유튭 라이브 버닝", time: "10 am - 11 am", backgroundColor: .purple),
            MyCard(imageName: "calendar", title: "영상 다시보기", time: "10 am - 11 am", backgroundColor: .systemRed),
            MyCard(imageName: "calendar", title: "마트 장보기", time: "10 am - 11 am", backgroundColor: .orange),
            MyCard(imageName: "calendar", title: "롤 한판하기", time: "10 am - 11 am", backgroundColor: .blue),
        ]
        
        return  viewModel
    }
    
    
}
