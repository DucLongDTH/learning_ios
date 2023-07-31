//
//  DataServices.swift
//  app-swoosh
//
//  Created by DucLong on 30/07/2023.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imgName: "shirts.png"),
        Category(title: "HOODIES", imgName: "hoodies.png"),
        Category(title: "HATS", imgName: "hats.png"),
        Category(title: "DIGITAL", imgName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Grapichs Beanie",price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Grapichs Beanie",price: "$23", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Grapichs Beanie",price: "$25", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Grapichs Beanie",price: "$30", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodies Hoodies",price: "$18", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodies Beanie",price: "$23", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodies Beanie",price: "$25", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodies Beanie",price: "$30", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirts Hoodies",price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirts Beanie",price: "$23", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirts Beanie",price: "$25", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirts Beanie",price: "$30", imageName: "shirt04.png"),
    ]
    
    private let digitalGoods = [
        Product
    ]()

    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigital()
        default:
            return getHats()
            
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigital() -> [Product] {
        return digitalGoods
    }
}
