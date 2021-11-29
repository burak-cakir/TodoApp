//
//  ToDoMain.swift
//  TodoApp
//
//  Created by burak cakir on 30.11.2021.
//

import SwiftUI

struct ToDoMain: View {
    @EnvironmentObject  var todoStore : ToDoStore
    var body: some View {
        VStack{
            AddToDo()
           ToDoList()
        }
       
    }
}

struct ToDoMain_Previews: PreviewProvider {
    static var previews: some View {
        ToDoMain()
    }
}
