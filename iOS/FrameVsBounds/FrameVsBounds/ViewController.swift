//
//  ViewController.swift
//  FrameVsBounds
//
//  Created by Daniel Sutcliffe on 16/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var innerView: UIView!
    
    @IBOutlet weak var frameXSlider: UISlider!
    @IBOutlet weak var boundsXSlider: UISlider!
    
    @IBOutlet weak var frameYSlider: UISlider!
    @IBOutlet weak var boundsYSlider: UISlider!
    
    @IBOutlet weak var frameXOriginLabel: UILabel!
    @IBOutlet weak var boundsXOriginLabel: UILabel!
    
    @IBOutlet weak var frameYOriginLabel: UILabel!
    @IBOutlet weak var boundsYOriginLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frameXSlider.value = Float(containerView.frame.origin.x)
        boundsXSlider.value = Float(containerView.bounds.origin.x)
        
        frameYSlider.value = Float(containerView.frame.origin.y)
        boundsYSlider.value = Float(containerView.bounds.origin.y)
        
        updateValues()
    }

    @IBAction func frameXSliderChanged(_ sender: Any) {
        containerView.frame.origin.x = CGFloat(frameXSlider.value)
        updateValues()
    }
    
    @IBAction func frameYSliderChaned(_ sender: Any) {
        containerView.frame.origin.y = CGFloat(frameYSlider.value)
        updateValues()
    }
    
    @IBAction func boundsXSliderChanged(_ sender: Any) {
        containerView.bounds.origin.x = CGFloat(boundsXSlider.value)
        updateValues()
    }
    
    @IBAction func boundsYSliderChanged(_ sender: Any) {
        containerView.bounds.origin.y = CGFloat(boundsYSlider.value)
        updateValues()
    }
    
    private func updateValues() {
        frameXOriginLabel.text = "Frame x origin = \(Int(containerView.frame.origin.x))"
        boundsXOriginLabel.text = "Bounds x origin = \(Int(containerView.bounds.origin.x))"
        
        frameYOriginLabel.text = "Frame y origin = \(Int(containerView.frame.origin.y))"
        boundsYOriginLabel.text = "Bounds y origin = \(Int(containerView.bounds.origin.y))"
    }
}

