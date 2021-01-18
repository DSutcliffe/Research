//
//  AccountFrom.swift
//  PaymentSent
//
//  Created by Daniel Sutcliffe on 10/07/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import UIKit

@IBDesignable
class AccountFrom: UIView {

    // Component Frame
    var viewCornerRadius: CGFloat
    var viewBorderWidth: CGFloat
    var viewBorderColor: UIColor
    var viewBackgroundColor: UIColor
    
    // Component Body
    var accountName: UILabel?
    var sortCode: UILabel?
    var accountNumber: UILabel?
    var availableBalance: UILabel?
    var overdraftLimit: UILabel?
    
    required init(
        // Component Frame
        cornerRadius: CGFloat = 10,
        borderWidth: CGFloat = 1,
        borderColor: UIColor = .white,
        backgroundColor: UIColor = .lightGray,
        frame: CGRect) {
        
        viewCornerRadius = cornerRadius
        viewBorderWidth = borderWidth
        viewBorderColor = borderColor
        viewBackgroundColor = backgroundColor
        
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        // Component Frame
        layer.cornerRadius = viewCornerRadius
        layer.borderWidth = viewBorderWidth
        layer.borderColor =  viewBorderColor.cgColor
        layer.backgroundColor = viewBackgroundColor.cgColor
        
        // Component Body
        prepareAccountFromComponent(accountName: "Online Saver",
                                    sortCode: "30-00-94",
                                    accountNumber: "65548779",
                                    availableBalance: "£300.50",
                                    overdraftLimit: "£100 overdraft limit")
    }
    
    func prepareAccountFromComponent(accountName: String, sortCode: String, accountNumber: String, availableBalance: String, overdraftLimit: String) {
        self.accountName?.text = accountName
        self.sortCode?.text = sortCode
        self.accountNumber?.text = accountNumber
        self.availableBalance?.text = availableBalance
        self.overdraftLimit?.text = overdraftLimit
        
    }
    
}



