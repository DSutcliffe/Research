//
//  SelectionViewController.swift
//  ProtocolsAndDelegates
//
//  Created by Daniel Sutcliffe on 26/11/2020.
//

import UIKit

protocol ScreenSelectionDelegate {
    func screenSelected(name: String, color: UIColor)
}

class SelectionViewController: UIViewController {
    
    var delegate: ScreenSelectionDelegate!

    @IBOutlet weak var selectionScreenLabel: UILabel!
    @IBOutlet weak var setScreen1Button: UIButton!
    @IBOutlet weak var setScreen2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectionScreenLabel.text = "Selection Screen"
        setScreen1Button.setTitle("Screen 1", for: .normal)
        setScreen2Button.setTitle("Screen 2", for: .normal)
    }

    @IBAction func setScreen1ButtonPressed(_ sender: Any) {
        delegate.screenSelected(name: "Screen 1 Selection", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func setScreen2ButtonPressed(_ sender: Any) {
        delegate.screenSelected(name: "Screen 2 Selection", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
}
