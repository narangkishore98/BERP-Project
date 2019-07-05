//
//  Address.swift
//  BERP-Project
//
//  Created by MacStudent on 2019-07-05.
//  Copyright © 2019 Bikloo. All rights reserved.
//

import Foundation
struct Address
{
    
    var city : String
    var state : String
    var aptNo : String?
    var pincode : String
    var street : String
    
    func display() -> String
    {
        return "\(aptNo ?? "")  \(street), \(city), \(state), CANADA - \(pincode)"
    }
    init(city: String, state: String, aptNo: String?, pincode: String, street: String)
    {
        self.city = city
        self.state = state
        self.aptNo = aptNo ?? ""
        self.pincode = pincode
        self.street = street
    }
    
}
