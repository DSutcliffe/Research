//
//  ViewController.swift
//  Gesture Recognizers
//
//  Created by Daniel Sutcliffe on 28/04/2020.
//  Copyright © 2020 Jaydan. All rights reserved.
//

import UIKit
import UIKit.UIGestureRecognizer

class ViewController: UIViewController {

    @IBOutlet weak var codeTwo: UILabel!
    @IBOutlet weak var blurEffect: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Observer for Screen Recording
        UIScreen.main.addObserver(self, forKeyPath: "captured", options: .new, context: nil)
        
        // Code 3 label blur overlay
        blurEffect.isHidden = true
        
    }
    
    // Check for screen recording trigger
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey: Any]?, context: UnsafeMutableRawPointer?) {
        if (keyPath == "captured") {
            let isCaptured = UIScreen.main.isCaptured
            print(isCaptured)
            
            if isCaptured {
                // Code 2
                codeTwo.text = "Recording"
                
                // Code 3
                blurEffect.isHidden = false
                
                // Hide complete view
                // self.view.isHidden = true;
            } else {
                // Code 2
                codeTwo.text = "CODE 2"
                
                // Code 3
                blurEffect.isHidden = true
                
                // Hide complete view
                // self.view.isHidden = false;
            }
            
        }
    }

    // Code 1 - Gesture Test!
    // Code Gesture via clicks
    // Each label tick 'User Interaction Enabled' Attributes Inspector
    // Add swipe gesture recognizer to view controller scene
    // Connect label to recognizer (Ctrl drag)
    // Connect gesture to code IBAction (Ctrl drag)
    
    @IBAction func labelSwipe(_ sender: Any) {
        print("Swipe Gesture")
    }
    
}

