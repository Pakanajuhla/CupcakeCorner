//
//  Order.swift
//  CupcakeCorner
//
//  Created by Владислав on 07.12.2023.
//

import Foundation

@Observable
class Order {
    static let types = ["Vanilla", "Strawberry", "Chocolate"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extrafrosting = false
                addSprinkles = false
            }
        }
    }
    var extrafrosting = false
    var addSprinkles = false
}
