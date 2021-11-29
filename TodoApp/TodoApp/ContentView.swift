//
//  ContentView.swift
//  TodoApp
//
//  Created by burak cakir on 29.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject  var todoStore : ToDoStore
    
    var body: some View {
        ToDoMain()
        .environmentObject(todoStore)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(ToDoStore())
    }
}
