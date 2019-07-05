//
//  extension_date.swift
//  BERP-Project
//
//  Created by MacStudent on 2019-07-05.
//  Copyright © 2019 Bikloo. All rights reserved.
//

import Foundation
extension Date
{
    public func getForamttedDate() -> String
    {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        let formattedDate = dateFormatter.string(from: self)
        return formattedDate
    }
}
