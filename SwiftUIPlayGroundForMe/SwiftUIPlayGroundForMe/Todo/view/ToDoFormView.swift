//
//  ToDoForm.swift
//  SwiftUIPlayGroundForMe
//
//  Created by klioop on 2021/05/01.
//

import SwiftUI

struct ToDoFormView: View {
    
    @EnvironmentObject var dataStore: DataStore
    @ObservedObject var formVM: ToDoFormViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            
            Form {
                
                VStack {
                    TextField("toDo", text: $formVM.name)
                    Toggle("completed", isOn: $formVM.completed)
                }
            }
            .navigationBarTitle(Text("ToDo"), displayMode: .inline)
            .navigationBarItems(leading: cancleButton, trailing: updateSaveButton)
        }
    }
}

extension ToDoFormView {
    
    func addToDo() {
        let toDo = ToDo(name: formVM.name)
        dataStore.addToDo(toDo)
        presentationMode.wrappedValue.dismiss()
    }
    
    func updateToDo() {
        let toDo = ToDo(id: formVM.id!, name: formVM.name, completed: formVM.completed)
        dataStore.updateToDo(toDo)
        presentationMode.wrappedValue.dismiss()
    }
    
    var cancleButton: some View {
        Button("cancle") {
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    var updateSaveButton: some View {
        Button(formVM.updating ? "Update" : "Save", action:
            formVM.updating ? updateToDo : addToDo)
            .disabled(formVM.isDisabled)
    }
}

struct ToDoForm_Previews: PreviewProvider {
    static var previews: some View {
        ToDoFormView(formVM: ToDoFormViewModel())
            .environmentObject(DataStore())
    }
}
