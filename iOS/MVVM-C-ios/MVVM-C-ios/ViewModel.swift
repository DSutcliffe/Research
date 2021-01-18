//
//  ViewModel.swift
//  MVVM-C-ios
//
//  Created by Daniel Sutcliffe on 01/06/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import Foundation
import UIKit

public protocol ViewModelProtocol {
    func funcNameClass()
    
}

public protocol ViewModelDelegate {
    func funcNameDelegate()
    
}

public class ViewModel: ViewModelProtocol {
    public var delegate: ViewModelDelegate?
    
    public func funcNameClass() {
        delegate?.funcNameDelegate()
    }
    
}
