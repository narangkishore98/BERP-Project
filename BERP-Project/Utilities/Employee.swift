//
//  Employee.swift
//  BERP-Project
//
//  Created by Kishore Narang on 2019-07-05.
//  Copyright © 2019 Bikloo. All rights reserved.
//

import Foundation
class Employee : User
{
    var  salary:Float
    var  designation:Designation
    init(firstName:String, lastName:String, email:String, mobile:String, password:String, dob:Date, salary:Float, designation:Designation)
    {
        self.salary = salary
        self.designation = designation
        super.init(firstName: firstName, lastName: lastName, email: email, mobile: mobile, password: password, dob: dob)
    }
}
