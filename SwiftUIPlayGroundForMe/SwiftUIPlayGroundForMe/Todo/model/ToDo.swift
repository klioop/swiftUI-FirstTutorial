//
//  ToDo.swift
//  SwiftUIPlayGroundForMe
//
//  Created by klioop on 2021/05/01.
//

import Foundation

struct ToDo: Identifiable, Codable {
    
    var id: String = UUID().uuidString
    
    var name: String
    var completed: Bool = false
    
    static var sampleToDo: [ToDo] {
        [
            ToDo(name: "Go to gym"),
            ToDo(name: "Appointment", completed: true)
        ]
    }
}
