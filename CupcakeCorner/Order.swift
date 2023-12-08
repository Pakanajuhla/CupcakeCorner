//
//  Order.swift
//  CupcakeCorner
//
//  Created by Владислав on 07.12.2023.
//

import Foundation

@Observable
class Order: Codable {
    
    enum CodingKeys: String, CodingKey {
        case _type = "type"
        case _quantity = "quantity"
        case _specialRequestEnabled = "specialRequestEnabled"
        case _extrafrosting = "extrafrosting"
        case _addSprinkles = "addSprinkles"
        case _name = "name"
        case _streetAddress = "streetAddress"
        case _city = "city"
        case _zip = "zip"
        
    }
    
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Watermelon"]
    
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
    
    var name = ""
    var streetAddress = ""
    var city = ""
    var zip = ""
    
    var hasValidAddrees: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        
        return true
    }
    
    var cost: Decimal {
        // $2 per cake
        var cost = Decimal(quantity) * 2
        
        // complicated cakes cost more
        cost += Decimal(type) / 2
        
        // $1 cake for extra frosting
        if extrafrosting {
            cost += Decimal(quantity)
        }
        
        // $0.50 cake for sprinkles
        if addSprinkles {
            cost += Decimal(quantity) / 2
        }
        
        return cost
    }
}
