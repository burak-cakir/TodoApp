//
//  RandomListStore.swift
//  TodoApp
//
//  Created by burak cakir on 1.12.2021.
//

import Foundation


class GameStore {
    var games : [Game] = []
    init(){
        for _ in 1..<5 {
            createGame()
        }
    }
    
    @discardableResult func createGame() -> Game {
        let game = Game(random: true)
        games.append(game)
        return game
        
    }
    
}




//
//class ListStore {
//    var mylists : [Mylist] = []
//    init(){
//        for _ in 1..<5 {
//            createList()
//        }
//    }
//
//    @discardableResult func createList() -> Mylist {
//        let mylist = Mylist(random: true)
//        mylists.append(mylist)
//        return mylist
//
//    }
//
//}

