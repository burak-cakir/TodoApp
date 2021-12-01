//
//  RandomListScreen.swift
//  TodoApp
//
//  Created by burak cakir on 1.12.2021.
//

import SwiftUI

struct RandomListScreen: View {
    let listStore = ListStore()
    

    var body: some View {
        
        
        VStack{
            HStack{
                Button("  DELETE"){
                    listStore.mylists.append(listStore.createList())
                }
                Spacer()
                Button("ADD  "){
                   
                }
            }
            
        List(listStore.mylists){(mylist) in
            
            HStack{
                
                VStack(alignment: .leading){
                    Text("PERSON : " + mylist.listname.uppercased() )
                        
                    Text("AREA : " + String( mylist.listdescription.uppercased()))
                        .font(.callout)
                   
                }
                Spacer()
                if  mylist.listpriority == true {
                    Text("TRUE")
                }
                else{
                    Text("FALSE")
                }
               
            }
           
            
        
     
        }
        }
        
    }
}

struct RandomListScreen_Previews: PreviewProvider {
    static var previews: some View {
        RandomListScreen()
    }
}




