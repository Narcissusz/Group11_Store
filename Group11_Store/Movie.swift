//
//  Movie.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon on 2023-05-25.
//

import Foundation

class Movie : Item {
    
    var runningTime: Int = 0
    
    init(id : Int, title : String, price : Double, runningTime: Int) {
        self.runningTime = runningTime
        super.init(id: id, title: title, price: price)
    }
    
    override func printReceipt(isRefund: Bool, amount: Double) {
        //
    }
}
