//
//  Wage.swift
//  app-swoosh
//
//  Created by DucLong on 26/07/2023.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
    

}
