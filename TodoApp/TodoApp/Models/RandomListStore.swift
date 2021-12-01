//
//  RandomListStore.swift
//  TodoApp
//
//  Created by burak cakir on 1.12.2021.
//

import Foundation


class ListStore: ObservableObject {
    var mylists : [Mylist] = []
    init(){
        for _ in 0..<1 {
            createList()
        }
    }
    
    @discardableResult func createList() -> Mylist {
        let mylist = Mylist(random: true)
        mylists.append(mylist)
        return mylist
        
    }
    
}
