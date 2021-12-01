//
//  RandomListModel.swift
//  TodoApp
//
//  Created by burak cakir on 1.12.2021.
//

import Foundation

class Mylist : NSObject, Identifiable {
    var listname :  String
    var listdescription : String
    var listpriority : Bool
    
    init(listname : String, listdescription : String, listpriority : Bool) {
        
        self.listname = listname
        self.listdescription = listdescription
        self.listpriority = listpriority

    }
    
    convenience  init(random: Bool = false) {
        if random{
            let  familys = ["anne","baba","kızkardeş","erkekkardeş","amca","dayı","öğretmen","işarkadaşı"]
            var idx = arc4random_uniform(UInt32(familys.count))
            let randomFamily = familys[Int(idx)]
            
            let  areas = ["pastahane","ev","okul","sinema","otopark","düğün","konser","servis"]
            var idx2 = arc4random_uniform(UInt32(areas.count))
            let randomArea = areas[Int(idx2)]
            
            var idx3 = arc4random_uniform(UInt32(6))
            
//            let randomString = "Kişi \(randomFamily) yer \(randomArea) saat \(Int(idx3)) "
            
//            let serialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            let randomlistpriority = false
            
            self.init(listname: randomFamily, listdescription: randomArea, listpriority: false)
        }
        else {
            self.init(listname: "" , listdescription: "", listpriority: false )
        }
    }
    
}





