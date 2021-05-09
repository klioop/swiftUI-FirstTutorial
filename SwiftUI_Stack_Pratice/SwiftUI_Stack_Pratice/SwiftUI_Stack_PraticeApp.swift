//
//  SwiftUI_Stack_PraticeApp.swift
//  SwiftUI_Stack_Pratice
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

@main
struct SwiftUI_Stack_PraticeApp: App {
    
    @StateObject var listViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(listViewModel: listViewModel)
        }
    }
}
