//
//  User.swift
//  SwiftUI Property Wrappers-2
//
//  Created by klioop on 2021/04/17.
//

import SwiftUI

class User: ObservableObject {
    
    internal init(name: String, luckyNumber: Int) {
        self.name = name
        self.luckyNumber = lastNumber
    }
    
    var name: String
    @Published var luckyNumber: Int = 0 {
        didSet {
            lastNumber = luckyNumber
        }
    }
    @AppStorage("lastNumber") var lastNumber = 3
    
}
