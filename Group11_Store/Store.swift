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
    
    //to get item instance for given item id
    func getItemFromItemId(itemId:Int) -> Item? {
        for item in items{
            if (item.id==itemId){
                return item
            }
        }
        return nil
    }
    
    func buyItem(customer: Customer, itemId: Int){
        
        //Check If User owns this item.
        for item in customer.itemList{
            if (item.id == itemId){
                print("⚠️ User already own this item.")
                return
            }
        }
        
       //Check If Item is Valid
        guard let item = self.getItemFromItemId(itemId: itemId) else {
            print("⚠️ Requested Item Doesn't Exists.")
            return
        }
        
        //Check User has sufficience balanace to purchase item
        if(customer.balance < item.price){
            print("‼️ User doesn't have sufficient balance to purchase this item")
            return
        }
        
        customer.balance -=  item.price
        
        let ownedItem = OwnedItem(item: item)
        
        customer.itemList.append(ownedItem)
        print("🎊 Purchase Success!")
        item.printReceipt(isRefund: false, amount: item.price)
    }
    
    func issueRefund(customer: Customer, itemId: Int){
    
        //Check If User owns this item.
        for (index,item) in customer.itemList.enumerated(){
            if (item.id == itemId){
                if item.minutesUsed >= 30 {
                    print("‼️ Item Cannot be refunded because it's been used more than 30 minutes.")
                }else{
                    print("🎉 Issuing refund.")
                    customer.balance += item.price
                    item.printReceipt(isRefund: true, amount: item.price)
                    customer.itemList.remove(at: index)
                }
                return
            }
        }
        
        print("‼️ User doesn't own this item.")
    }
    
    func findByTitle(keyword: String) {
        var isFound:Bool = false
        for item in items{
            if(item.title.lowercased().contains(keyword.lowercased())){
                isFound = true
                var itemType:String = "ITEM"
                if(item is Movie){
                    itemType = "MOVIE"
                }else if (item is Game){
                    itemType = "GAME"
                }
                print("[\(itemType)] \(item.info)")
            }
        }
        
        if( isFound == false){
            print("Sorry🫥, no matching movie or game found.")
        }
    }
}
