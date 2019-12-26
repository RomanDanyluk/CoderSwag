//
//  DataService.swift
//  CoderSwag
//
//  Created by Romaha  on 26.12.2019.
//  Copyright © 2019 Romaha . All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "Digital", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Developers Logo Hat Black", price: "$25", imageName: "hat02.png"),
        Product(title: "Developers Logo Hat White", price: "$25", imageName: "hat03.png"),
        Product(title: "Developers Logo Snackback", price: "$23", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title:"Devslopes Logo Hoodie Grey", price: "$35", imageName: "hoodie01.png"),
        Product(title:"Devslopes Logo Hoodie Red", price: "$36", imageName: "hoodie02.png"),
        Product(title:"Devslopes Hoodie Grey", price: "$39", imageName: "hoodie03.png"),
        Product(title:"Devslopes Logo Hoodie Black", price: "$164", imageName: "hoodie04.png")
        
    ]
    
    private let shirts = [
        Product(title:"Devslopes Logo Shirt Brey", price: "$15", imageName: "shirt01.png"),
        Product(title:"Devslopes Badge Shirt Light Grey", price: "$25", imageName: "shirt02.png"),
        Product(title:"Devslopes Logo Shirt Red", price: "$21", imageName: "shirt03.png"),
        Product(title:"Hustle Delegate Grey", price: "$16", imageName: "shirt04.png"),
        Product(title:"Kickflip Studios Black", price: "$13", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
   
    
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HATS":
           return getHats()
        case "HOODIES":
           return getHoodies()
        case "DIGITAl":
           return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product] {
       return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
