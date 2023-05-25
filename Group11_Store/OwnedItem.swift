//
//  OwnedItem.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon on 2023-05-25.
//

import Foundation

class OwnedItem : Item {
    
    var minutesUsed : Int = 0
    
    init(item:Item){
        super.init(id: item.id, title: item.title, price: item.price)
    }
    
    init(id : Int, title : String, price : Double, minutesUsed: Int) {
        self.minutesUsed = minutesUsed
        super.init(id: id, title: title, price: price)
    }
}
