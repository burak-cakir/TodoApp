//
//  ToDoMain.swift
//  TodoApp
//
//  Created by burak cakir on 30.11.2021.
//

import SwiftUI

struct ToDoMain: View {
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
