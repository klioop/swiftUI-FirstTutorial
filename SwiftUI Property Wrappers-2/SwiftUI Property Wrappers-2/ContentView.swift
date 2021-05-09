//
//  ContentView.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

// We will store the value in a special internal memory outside of the view struct. This is a @State property wrapper.
// Only the related view can access it.
// The value of a state property changes swiftUI rebuilds the view to respect the changes in the value.
// Private - No other views should be able to access it.

// environObject: We can place an object into the environment so that any child view can automatically have access to it.
// SwiftUI's enviornment object property wrapper allows us to create views that rely on shared data often across an entire swiftUI app.
// Think of an environment object as a smarter, simpler way of using state objects and observed objects on lots of views, rather than creating some data in a view and then passing it down or up the chain to other views. You can create it in a view and put it into the environment so that all other descendant views have access to it.
// An environment object gets supplied by its ancestor view.

// @AppStorage reads and writes from UserDefaults.
// This wrapper watches a key in user defaults and updates it when the value changes

struct ContentView: View {
    @EnvironmentObject var user: User
    @State private var presentedModal = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Text("Lucky Number:")
                    Text("\(user.luckyNumber)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                }
                Group {
                    Button("New Number") {
                        user.luckyNumber = Int.random(in: 1...10)
                    }
                    Button("Show Modal") {
                        presentedModal = true
                    }
                    .sheet(isPresented: $presentedModal) {
                        ModalSheetView(isShowing: $presentedModal).environmentObject(user)
                    }
                }
                .frame(width: 150)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.blue)
                .cornerRadius(7)
            }
            .navigationTitle("\(user.name)")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    NavigationLink(destination: NavDestinationView()) {
                        Text("Go Next")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(User(name: "Sam", luckyNumber: 3))
    }
}
