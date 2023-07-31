//
//  Product.swift
//  app-swoosh
//
//  Created by DucLong on 31/07/2023.
//

import Foundation

struct Product {
    private(set) public var title: String!
    private(set) public var price: String!
    private(set) public var imageName: String!
    
    init(title: String!, price: String!, imageName: String!) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
