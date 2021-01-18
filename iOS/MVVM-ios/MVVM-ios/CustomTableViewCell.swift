//
//  CustomTableViewCell.swift
//  MVVM-ios
//
//  Created by Daniel Sutcliffe on 29/05/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    
    static let cellIdentifier = "CustomTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    public func configure(with viewModel: CellViewModel) {
        myLabel.text = "\(viewModel.firstName) \(viewModel.lastName)"
    }
    
}
