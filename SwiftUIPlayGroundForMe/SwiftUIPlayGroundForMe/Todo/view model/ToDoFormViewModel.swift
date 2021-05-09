//
//  ToDoFormModel.swift
//  SwiftUIPlayGroundForMe
//
//  Created by klioop on 2021/05/01.
//

import Foundation

class ToDoFormViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var completed: Bool = false
    
    var id: String? = nil
    
    init() {
        
    }
    
    init(_ toDo: ToDo) {
        self.name = toDo.name
        self.completed = toDo.completed
        self.id = toDo.id
    }
    
    
    var updating: Bool {
        id != nil
    }
    
    var isDisabled: Bool {
        name.isEmpty
    }
}
