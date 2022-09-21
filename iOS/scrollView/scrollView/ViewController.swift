//
//  ViewController.swift
//  scrollView
//
//  Created by Daniel Sutcliffe on 15/09/2022.
//

import UIKit

class ViewController: UIViewController {

    /// 1. Add ScrollView to VC
    /// 2. Drag to position in IB set 0,0,0,0
    /// 3. Add Stack inside ScrollView
    /// 4. Drag to perimieter of ScrollView
    /// 5. CTRL + Drag to Content Layout Guide (Hold Shift + top, bottom, leading, trailing)
    /// 6. CTRL + Drag to Frame Layout Guide (Equal Widths)
    /// 7. Check/Set all constraints = 0
    /// 8. Height Error when stcak has no content! - Size Inspector -> Intrinsic Size -> Placeholder -> Height -> 1,000 eg. Temp height that adjusts to code.
    
    @IBOutlet weak var vStack: UIStackView!
    
    let myText = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = UILabel()
        a.text = myText
        a.numberOfLines = 0
        vStack.addArrangedSubview(a)
        
        let b = UILabel()
        b.text = myText
        b.numberOfLines = 0
        vStack.addArrangedSubview(b)
        
        let c = UILabel()
        c.text = myText
        c.numberOfLines = 0
        vStack.addArrangedSubview(c)
        
        let d = UILabel()
        d.text = myText
        d.numberOfLines = 0
        vStack.addArrangedSubview(d)
    }


}

