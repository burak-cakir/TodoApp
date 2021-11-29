//
//  AddToDo.swift
//  TodoApp
//
//  Created by burak cakir on 30.11.2021.
//

import SwiftUI

struct AddToDo: View {
    
    @EnvironmentObject  var todoStore : ToDoStore
    @State var todoModel = ToDoModel()
    
    var body: some View {
     
        VStack{
            TextField("Title", text: $todoModel.title)
                .padding()
            TextField("Description", text: $todoModel.description)
                .padding()
            
            Button("Add ToDo List"){
                
            var newToDo = ToDoModel()
            newToDo.title = todoModel.title
            newToDo.description = todoModel.description
            
                todoStore.toDoList.append(newToDo)
                
                
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct AddToDo_Previews: PreviewProvider {
    static var previews: some View {
        AddToDo()
    }
}
