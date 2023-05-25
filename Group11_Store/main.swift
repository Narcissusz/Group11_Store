//
//  main.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon on 2023-05-24.
//

import Foundation

let customer1 = Customer(itemList: [], balance: 120)

let movie1 = Movie(id: 1, title: "Transformers", price: 99, runningTime: 150)
let movie2 = Movie(id: 2, title: "Guardians of the Galaxy", price: 70, runningTime: 120)
let movie3 = Movie(id: 3, title: "The Little Mermaid", price: 69, runningTime: 100)
let movie4 = Movie(id: 4, title: "Fast X", price: 120, runningTime: 140)

let game1 = Game(id: 1, title: "FIFA2023", price: 200, publisher: "EA SPORTS", isMultiplayer: true)
let game2 = Game(id: 2, title: "The Last of Us", price: 180, publisher: "Sony Computer Entertainment.", isMultiplayer: false)
let game3 = Game(id: 3, title: "Assassin's Creed", price: 180, publisher: "Ubisoft", isMultiplayer: false)

var allItem : [Item] = []
allItem.append(movie1)
allItem.append(movie2)
allItem.append(movie3)
allItem.append(movie4)
allItem.append(game1)
allItem.append(game2)
allItem.append(game3)

let store = Store(items: allItem)
let input = readLine()
store.findByTitle(keyword: input ?? "")
store.buyItem(customer: customer1, itemId: 1)

customer1.reloadAccount(amount: 200)

customer1.userItem(id: 1, minutes: 30)

//var store = Store(items: [])
//
//store.buyItem(customer:  , itemId: )
//
//store.issueRefund(customer: customer, itemId: 1)
//store.issueRefund(customer: customer, itemId: 3)
//
//store.findByTitle(keyword: "kingdom")
