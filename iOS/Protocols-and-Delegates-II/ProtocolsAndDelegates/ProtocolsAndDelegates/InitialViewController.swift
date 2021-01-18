//
//  ViewController.swift
//  ProtocolsAndDelegates
//
//  Created by Daniel Sutcliffe on 26/11/2020.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var initialScreenLabel: UILabel!
    @IBOutlet weak var chooseScreenButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialScreenLabel.text = "Initial Screen"
        chooseScreenButton.setTitle("Choose a Screen View", for: .normal)
        
        // Accessibility Tests
        myImageView.isAccessibilityElement = true
        myImageView.accessibilityLabel = "Test Works"
    }

    @IBAction func chooseScreenButtonPressed(_ sender: Any) {
        
        // Set Identity Inspector: Storyboard to "withIdentifier"
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionViewController") as! SelectionViewController
        
        selectionVC.delegate = self
        
        present(selectionVC, animated: true, completion: nil)
    }
    
}

extension InitialViewController: ScreenSelectionDelegate {
    func screenSelected(name: String, color: UIColor) {
        initialScreenLabel.text = name
        view.backgroundColor = color
    }
    
}
