//
//  Customer.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon on 2023-05-25.
//

import Foundation

class Customer {
    
    var itemList: [OwnedItem] = []
    var balance: Double = 0.0
    
    init(itemList: [OwnedItem], balance: Double = 10.0) {
        self.itemList = itemList
        self.balance = balance
    }

    func reloadAccount(amount : Double) {
        print("Reloading Customer's balance with amount : $\(amount)")
        balance += amount
    }

    func useItem(id : Int, minutes : Int){
        for item in itemList {
            if item.id == id {
                print("Adding \(minutes) minute for item : \(item.title)")
                item.minutesUsed += minutes
                break
            }
        }
    }
}
