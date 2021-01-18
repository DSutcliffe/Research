//
//  Product.swift
//  Get_Set_WillSet_DidSet-ios
//
//  Created by Daniel Sutcliffe on 29/05/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import UIKit

class Product {
    
    var taxRate: Float = 0.10
    
    var price: Float {
        willSet {
            print("We will set the price, it is curently \(price)")
        }
        /// didSet and set are the same but didSet has to be used with willSet, set with get
        didSet {
            print("Price has been set to \(price)")
        }
    }
    
    var priceWithTax: Float  {
        get {
            return price + price * taxRate
        }
        /// didSet and set are the same but didSet has to be used with willSet, set with get
        set {
            print("we set the price with tax, this has no effect though")
        }
    }

    init() {
        price = 10
    }
    
}
