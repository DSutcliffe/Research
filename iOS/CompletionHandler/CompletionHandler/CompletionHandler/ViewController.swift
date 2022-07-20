//
//  ViewController.swift
//  CompletionHandler
//
//  Created by Daniel Sutcliffe on 19/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myFunc()
    }
    
    func myFunc() {
        Service.grabDataFromDatabaseA {
            print("Result:")
        }
        
        Service.grabDataFromDatabaseB { result in
            print("Result: \(result)")
        }
        
        Service.grabDataFromDatabaseC { result in
            print("Result: \(result)")
        }
    }

}

