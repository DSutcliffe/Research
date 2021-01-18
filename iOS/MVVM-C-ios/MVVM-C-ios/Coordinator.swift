//
//  Coordinator.swift
//  MVVM-C-ios
//
//  Created by Daniel Sutcliffe on 01/06/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

import Foundation

public class Coordinator {
    
    public func start() {
        
        let viewModel = ViewModel()
        viewModel.delegate = self

    }
    
}

extension Coordinator: ViewModelDelegate {
    public func funcNameDelegate() {
        print("Go to XXX VC")
    }
    
}
