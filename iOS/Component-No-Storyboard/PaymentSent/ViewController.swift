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
    
    var _stack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTitleLabel()
        setupStackView()
        
//        view.addSubview(contentView1)
//        view.addSubview(contentView2)
    }
    
    
    // MARK: Title Label
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
    
    // MARK: Stack View
    func setupStackView() {
        view.addSubview(_stack)
        _stack.axis = .vertical
        _stack.distribution = .fillEqually
        _stack.spacing = 20
        
        addButtonsToStackView()
        
        setupStackViewConstraints()
    }
    
    func addButtonsToStackView() {
        let numberOfButtons = 10
        
        for i in 1...numberOfButtons {
            let button = ButtonComponent()
            button.setTitle("\(i)", for: .normal)
            _stack.addArrangedSubview(button)
        }
        
    }
    
    func setupStackViewConstraints() {
        _stack.translatesAutoresizingMaskIntoConstraints = false
        _stack.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        _stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        _stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        _stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
    }
    
}
