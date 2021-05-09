//
//  TodoListManager.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import Foundation

class TodoListManager: ObservableObject {
    @Published var items : [Item] = []
    
    init(isForTest: Bool = false) {
        if !isForTest {
        // get my data and set to my items array
        }
        
    }
    
    func move(_ indices: IndexSet, _ newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem(name: String) {
        items.append(Item(id: UUID(), name: name))
    }
    
    func delete(at indexSet: IndexSet) {
        for index in indexSet {
            items.remove(at: index)
        }
    }
    
    static func emptyState() -> TodoListManager {
        let manager = TodoListManager(isForTest: true)
        
        manager.items = []
        return manager
    }
    
    static func fullState() -> TodoListManager {
        let manager = TodoListManager(isForTest: true)
        
        manager.items = [Item(id: UUID(), name: "Fisrt"), Item(id: UUID(), name: "Second"), Item(id: UUID(), name: "Third")]
        return manager
    }
    
}
