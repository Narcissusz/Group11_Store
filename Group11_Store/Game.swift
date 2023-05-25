//
//  Game.swift
//  Group11_Store
//
//  Created by Wiwat Thaphon on 2023-05-25.
//

import Foundation

class Game {
    
    var publisher: String = ""
    var isMultiplayer: Bool = false
    
    init(publisher: String, isMultiplayer: Bool) {
        self.publisher = publisher
        self.isMultiplayer = isMultiplayer
    }
}
