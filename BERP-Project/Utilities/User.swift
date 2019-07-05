//
//  User.swift
//  BERP-Project
//
//  Created by Kishore Narang on 2019-07-05.
//  Copyright © 2019 Bikloo. All rights reserved.
//

import Foundation
class User
{
    static private var _userID:Int = 0
    var userID:Int
    var firstName:String
    var lastName:String
    var fullName:String
    {
        return "\(firstName) \(lastName)"
    }
    var email:String
    var mobile:String
    var password:String
    var dob:Date
    
    
     init(firstName:String, lastName:String, email:String, mobile:String, password:String, dob:Date)
    {
        User._userID += 1
        self.userID = User._userID
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.mobile = mobile
        self.dob = dob
    }
}
