//
//  Store.swift
//  Group11_Store
//
//  Created by Mahin Pathan on 2023-05-24.
//

import Foundation

class Store {
    var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    func buyItem(customer: Customer, itemId: Int){
        
        //to do after customer class is implemented
        
    }
    
    func issueRefund(customer: Customer, itemId: Int){
        
        //after owned item class is implemented
    }
    func findByTitle(keyword: String) {
        print("keyword = \(keyword)")
        // yet to implement after your implementation
        
    }
}
