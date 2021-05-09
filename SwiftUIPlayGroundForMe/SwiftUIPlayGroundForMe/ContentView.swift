//
//  ContentView.swift
//  SwiftUIPlayGroundForMe
//
//  Created by klioop on 2021/04/17.
//

import SwiftUI



struct ContentView: View {
    @EnvironmentObject var dataStore: DataStore
    @State private var modalType: ModalType? = nil
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(dataStore.toDos) { toDo in
                    Button(action: {
                        modalType = .update(toDo)
                    }) {
                        Text(toDo.name)
                            .font(.title3)
                            .strikethrough(toDo.completed)
                            .foregroundColor(toDo.completed ? .green : Color(.label))
                    }
                }
                .onDelete(perform: dataStore.delteToDo)
                
            }.listStyle(GroupedListStyle())
            .toolbar(content: {
                
                ToolbarItem(placement: .principal, content: {
                    Text("ToDos")
                        .font(.headline)
                })
                
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Button(action: {
                        modalType = .new
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                })
            })
        }.sheet(item: $modalType) { $0 }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
