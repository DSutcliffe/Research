//
//  ViewController.swift
//  AmountField
//
//  Created by Daniel Sutcliffe on 04/08/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.addTarget(self, action: #selector(myTextFieldDidChange), for: .editingChanged)
    }

    @objc func myTextFieldDidChange(_ textField: UITextField) {

        if let amountString = textField.text?.currencyInputFormatting() {
            textField.text = amountString
        }
    }
}
extension String {

    // formatting text for currency textField
    func currencyInputFormatting() -> String {

        var number: NSNumber!
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyAccounting
        formatter.locale = Locale.init(identifier: "en_GB")
//        formatter.currencySymbol = "£"
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2

        var amountWithPrefix = self

        // remove from String: "$", ".", ","
        let regex = try! NSRegularExpression(pattern: "[^0-9]", options: .caseInsensitive)
        amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count), withTemplate: "")

        let double = (amountWithPrefix as NSString).doubleValue
        number = NSNumber(value: (double / 100))

        // if first number is 0 or all numbers were deleted
        guard number != 0 as NSNumber else {
            return ""
        }

        return formatter.string(from: number)!
    }
}
    
