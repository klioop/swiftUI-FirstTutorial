//
//  ListTestApp.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

@main
struct ListTestApp: App {
    
    @StateObject var todoManager = TodoListManager()
    
    var body: some Scene {
        WindowGroup {
            TodoListView(todoManager: todoManager)
        }
    }
}
