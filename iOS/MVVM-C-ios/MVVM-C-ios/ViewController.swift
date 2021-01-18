//
//  ViewController.swift
//  MVVM-C-ios
//
//  Created by Daniel Sutcliffe on 01/06/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    var viewModel: ViewModelProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        viewModel?.funcNameClass()
    }
    
}

