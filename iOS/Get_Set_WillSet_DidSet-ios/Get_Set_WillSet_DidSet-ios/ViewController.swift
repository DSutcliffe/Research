//
//  ViewController.swift
//  Get_Set_WillSet_DidSet-ios
//
//  Created by Daniel Sutcliffe on 29/05/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let iPhone7 = Product()
        
        /// "willSet" runs before we set the price and shows price before any changes
        /// "didSet" will run as a value has been set
        iPhone7.price = 700
       
        /// "get" we are asking for the variable so it will get what we asked
        print(iPhone7.priceWithTax)
        
        /// "set" will run as a value has been set
        iPhone7.priceWithTax = 20
        
    }


}

