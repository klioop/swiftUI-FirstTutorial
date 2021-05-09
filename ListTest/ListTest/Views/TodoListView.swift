//
//  ContentView.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var todoManager: TodoListManager
    
    var body: some View {
        NavigationView{
            
            ZStack {
                
                List {
                    ForEach(todoManager.items) { (item) in
                        NavigationLink(
                            destination: Text("Destination \(item.name)"),
                            label: {
                                Text(item.name)
                            })
                    }
                    .onDelete(perform: { indexSet in
                        todoManager.delete(at: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        todoManager.move(indices, newOffset)
                    })
                }
                
                if todoManager.items.isEmpty {
                    Text("Please Add more Items")
                        .foregroundColor(.gray)
                }
                
            }
            .navigationBarTitle(Text("Todo's"), displayMode: .inline)
            .toolbar(content: {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    EditButton()
                    Button(action: {
                        todoManager.addItem(name: "newly Added")
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView(todoManager: TodoListManager.emptyState()).previewDisplayName("Empty State")
        TodoListView(todoManager: TodoListManager.fullState())
            .previewDisplayName("Data  Exists")
    }
}
