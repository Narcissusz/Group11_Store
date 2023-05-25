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
        balance += amount
    }

    func userItem(id : Int, minutes : Int){
        for item in itemList {
            print(item.title)
            if item.id == id {
                print("Add minute")
                let ownedItem = OwnedItem(id: item.id, title: item.title, price: item.price, minutesUsed: minutes)
                break
            }
        }
    }
}
