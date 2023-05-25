//
//  main.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon, Mahin Pathan on 2023-05-24.
//

import Foundation

//1. Creating a customer
let customer1 = Customer(itemList: [], balance: 120)

//2. Creating a variety of movies and games
let movie1 = Movie(id: 1, title: "Transformers", price: 99, runningTime: 150)
let movie2 = Movie(id: 2, title: "Guardians of the Galaxy", price: 70, runningTime: 120)
let movie3 = Movie(id: 3, title: "The Little Mermaid", price: 69, runningTime: 100)
let movie4 = Movie(id: 4, title: "Fast X", price: 120, runningTime: 140)

let game1 = Game(id: 5, title: "FIFA2023", price: 200, publisher: "EA SPORTS", isMultiplayer: true)
let game2 = Game(id: 6, title: "The Last of Us", price: 180, publisher: "Sony Computer Entertainment.", isMultiplayer: false)
let game3 = Game(id: 7, title: "Assassin's Creed", price: 180, publisher: "Ubisoft", isMultiplayer: false)

//3. Creating a store and adding the movies and games to the store
var allItem : [Item] = []
allItem.append(movie1)
allItem.append(movie2)
allItem.append(movie3)
allItem.append(movie4)
allItem.append(game1)
allItem.append(game2)
allItem.append(game3)

let store = Store(items: allItem)

let divider = "================================================================================================"

//4. Searching for an item that exists
print("Enter Item Keyword that exist: ")
let input = readLine()
store.findByTitle(keyword: input ?? "")
print(divider)

//5. Searching for an item that does not exist
print("\nEnter Item Keyword that does not exist: ")
let invalidInput = readLine()
store.findByTitle(keyword: invalidInput ?? "")

print(divider)

print("\n***************** 6. Trying to purchase an item that the customer cannot afford ****************\n")

store.buyItem(customer: customer1, itemId: 7)

print(divider)

print("\n************* 7. Reloading the customer’s gift card so they have sufficient funds **************\n")
print("Customer's balance before reloading the gift card : \(customer1.balance)")
customer1.reloadAccount(amount: 200)
print("Customer's balance after reloading the gift card : \(customer1.balance)")
print(divider)

print("\n******* 8. Trying to purchase the same item again (now, they should be able to afford it *******")

store.buyItem(customer: customer1, itemId: 7)

print(divider)

print("\n*********************** 9. Purchasing an item that the user does not own ***********************\n")

store.buyItem(customer: customer1, itemId: 1)

print(divider)

print("\n************************* 10. Purchasing an item customer already owns *************************\n" )

store.buyItem(customer: customer1, itemId: 1)

print(divider)

print("\n********************* 11. Using one of the items for more than 30 minutes **********************\n")

customer1.useItem(id: 1, minutes: 40)

print(divider)

print("\n******** 12. Trying to refund an item that does NOT meet the refund policy requirements ********\n")

store.issueRefund(customer: customer1, itemId: 1)

print(divider)

print("\n************** 13. Refunding an item that DOES meet the refund policy requirements *************\n")

store.issueRefund(customer: customer1, itemId: 7)

print(divider)


