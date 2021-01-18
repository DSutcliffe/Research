//
//  ViewController.swift
//  Hold To View Label
//
//  Created by Daniel Sutcliffe on 28/04/2020.
//  Copyright © 2020 Jaydan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blurEffect: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Hard coded Gesture Recognizer
        blurEffect.isUserInteractionEnabled = true
        let tapGesture = UILongPressGestureRecognizer(target: self, action: #selector(userDidTapLabel(tapGestureRecognizer:)))
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userDidTapLabel(tapGestureRecognizer:)))
        blurEffect.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func userDidTapLabel(tapGestureRecognizer: UITapGestureRecognizer) {
        print("hello")
        blurEffect.isHidden = true
    }
    
}

