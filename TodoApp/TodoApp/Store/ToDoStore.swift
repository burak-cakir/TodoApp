//
//  ToDoStore.swift
//  TodoApp
//
//  Created by burak cakir on 30.11.2021.
//

import Foundation

class ToDoStore : ObservableObject{
    @Published var toDoList = [ToDoModel]()
}
