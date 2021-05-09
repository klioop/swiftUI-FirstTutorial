//
//  SwiftUI_Property_Wrappers_2App.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

@main
struct SwiftUI_Property_Wrappers_2App: App {
    // This is where an environment object is instantiated
    var user: User = User(name: "Sam", luckyNumber: 3)
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(user)
        }
    }
}
