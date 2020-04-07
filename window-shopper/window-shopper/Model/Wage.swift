//
//  Wage.swift
//  window-shopper
//
//  Created by Nico Yeager on 4/7/20.
//  Copyright © 2020 Nico Yeager. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
