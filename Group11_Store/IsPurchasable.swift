//
//  IsPurchasable.swift
//  Group11_Store
//
//  Created by Mahin Pathan on 2023-05-24.
//

import Foundation

protocol IsPurchasable {
    var info: String { get }
    
   func printReceipt(isRefund: Bool, amount: Double)
}
