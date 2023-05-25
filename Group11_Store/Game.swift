//
//  Game.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon on 2023-05-25.
//

import Foundation

class Game : Item  {
    
    var publisher: String = ""
    var isMultiplayer: Bool = false
    
    init(id : Int, title : String, price : Double, publisher: String, isMultiplayer: Bool) {
        self.publisher = publisher
        self.isMultiplayer = isMultiplayer
        super.init(id: id, title: title, price: price)
    }
    
    override func printReceipt(isRefund: Bool, amount: Double) {
        //
    }
}
