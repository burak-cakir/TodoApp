//
//  RandomListModel.swift
//  TodoApp
//
//  Created by burak cakir on 1.12.2021.
//

import Foundation

class Game : NSObject, Identifiable {
    var name :  String
    var priceInDollars : Double
    var serialNumber : String
    var dateCreated : Date
    
    init(name : String, priceInDollars : Double, serialNumber : String) {
        
        self.name = name
        self.priceInDollars = priceInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
    }
    
    convenience  init(random: Bool = false) {
        if random{
            let  conditions = ["new","Mint","dsee","usa"]
            var idx = arc4random_uniform(UInt32(conditions.count))
            let randomCondition = conditions[Int(idx)]
            
            let  names = ["asdad3","dde3","defde3","dde3"]
            idx = arc4random_uniform(UInt32(names.count)) 
            let randomName = names[Int(idx)]
            
             idx = arc4random_uniform(UInt32(6))
            
            let randomTitle = " :\(randomCondition)  :\(randomName)  :\(Int(idx)) "
            
            let serialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            let priceInDollars  = Double (arc4random_uniform(UInt32(10)))
            
            self.init(name: randomTitle, priceInDollars: priceInDollars, serialNumber: serialNumber)
        }
        else {
            self.init(name: "" , priceInDollars: 0, serialNumber: "" )
        }
    }
    
}
