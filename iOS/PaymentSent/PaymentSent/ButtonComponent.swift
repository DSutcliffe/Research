//
//  ButtonComponent.swift
//  PaymentSent
//
//  Created by Daniel Sutcliffe on 10/07/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import UIKit

class ButtonComponent: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .red
        titleLabel?.font = UIFont(name: "Arial", size: 20)
        layer.cornerRadius = 10
    }
}
