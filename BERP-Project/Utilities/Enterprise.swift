//
//  Enterprise.swift
//  BERP-Project
//
//  Created by Kishore Narang on 2019-07-05.
//  Copyright © 2019 Bikloo. All rights reserved.
//

import Foundation
import Foundation
class Enterprise
{
    var enterpriseName:String
    var address:Address
    var enterpriseContact:String
    var enterpriseEmail:String
    var employees = Array<Employee>()
    init(enterpriseName:String, address:Address, enterpriseContact:String, enterpriseEmail:String)
    {
        self.enterpriseName = enterpriseName
        self.address = address
        self.enterpriseContact = enterpriseContact
        self.enterpriseEmail = enterpriseEmail
    }
}
