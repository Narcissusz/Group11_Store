//
//  Customer.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon on 2023-05-25.
//

import Foundation

class Customer {
    
    var itemList: [Item] = []
    var balance: Double = 0.0
    
    init(itemList: [Item], balance: Double = 10.0) {
        self.itemList = itemList
        self.balance = balance
    }

    func reloadAccount(amount : Double) {
        
    }

    func userItem(id : Int, minutes : Int){
        
    }
}
