//
//  SwiftUIPlayGroundForMeApp.swift
//  SwiftUIPlayGroundForMe
//
//  Created by klioop on 2021/04/17.
//

import SwiftUI

@main
struct SwiftUIPlayGroundForMeApp: App {
    
    var dataStore: DataStore = DataStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataStore)
        }
    }
}
