//
//  DataStore.swift
//  BERP-Project
//
//  Created by Kishore Narang on 2019-07-05.
//  Copyright © 2019 Bikloo. All rights reserved.
//

import Foundation
enum Designation
{
    case Worker, Manager, Supervisor
}
class DataStore
{
    private static var object:DataStore = DataStore()
    private init()
    {
        
    }
    static func getData() -> DataStore
    {
        return object
    }
    private static var users = Array<User>()
    
}
