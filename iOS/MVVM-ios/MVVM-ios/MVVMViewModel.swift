//
//  MVVMViewModel.swift
//  MVVM-ios
//
//  Created by Daniel Sutcliffe on 11/11/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

/// Transform model information into values that can be displayed on a view. They’re usually classes, so they can be passed around as references.

import Foundation

protocol MVVMViewModelDelegate {
    func callUserData()
}

class MVVMViewModel: MVVMViewModelDelegate {
    var delegate: MVVMViewControllerDelegate?
    var data: [UserModel] = []
    
    func callUserData() {
        print("In callUserData")
        for user in 0..<3 {
            data.append(UserModel(name: "User\(user)", age: 23 + user))
        }
        delegate?.getUserData(data: data)
    }
}
