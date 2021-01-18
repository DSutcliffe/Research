//
//  ViewController.swift
//  PaymentSent
//
//  Created by Daniel Sutcliffe on 09/07/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTitleLabel()
        view.addSubview(contentView1)
        view.addSubview(contentView2)
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.text = "This is my test label"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
     
        setTitleLabelConstraints()
    }
    
    func setTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
    }
    
    let contentView1: UIView = {
        let view = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.layer.borderWidth = 1.0
        view.backgroundColor = .red
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()

    let contentView2: UIView = {
        let view = UIView(frame: CGRect(x: 200, y: 200, width: 100, height: 100))
        view.layer.borderWidth = 1.0
        view.backgroundColor = .blue
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
}
