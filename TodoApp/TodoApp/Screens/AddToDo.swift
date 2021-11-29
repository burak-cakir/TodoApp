//
//  AddToDo.swift
//  TodoApp
//
//  Created by burak cakir on 30.11.2021.
//

import SwiftUI

struct AddToDo: View {
    

    @State var todoModel = ToDoModel()
    
    var body: some View {
     
        VStack{
            TextField("Title", text: $todoModel.title)
                .padding()
            TextField("Description", text: $todoModel.description)
                .padding()
            
            Button("Add ToDo List"){
                
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
