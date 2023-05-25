//
//  Item.swift
//  Group11_Store
//
//  Created by Mahin Pathan on 2023-05-24.
//

import Foundation

class Item: IsPurchasable {
    
    var id: Int
    var title: String
    var price: Double
    var info: String {
        get{
            return "\(title) $\(price)"
        }
    }

    init(id: Int, title: String, price: Double) {
        self.id = id
        self.title = title
        self.price = price
    }
    
    func printReceipt(isRefund: Bool, amount: Double) {
        print("-------------------------")
        print("YOUR RECEIPT")
        print("-------------------------")
        
        if isRefund {
            print("We are refunding the purchase of \(title)")
            print("Refund amount: $\(amount)")
        }else{
            print("Thank you for purchasing \(title)")
            print("Purchase amount: $\(amount)")
        }
    }
}
