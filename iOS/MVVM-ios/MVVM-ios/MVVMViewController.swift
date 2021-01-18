//
//  ViewController.swift
//  MVVM-ios
//
//  Created by Daniel Sutcliffe on 29/05/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

/// Display visual elements and controls on the screen. They’re typically subclasses of UIView

import UIKit

protocol MVVMViewControllerDelegate {
    func getUserData(data: [UserModel]?)
}

class MVVMViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var mvvmViewModel = MVVMViewModel()
    var data: [UserModel] = [UserModel()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mvvmViewModel.delegate = self
        
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        mvvmViewModel.callUserData()
    }

}

extension MVVMViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier, for: indexPath) as! CustomTableViewCell
        cell.myLabel?.text = data[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension MVVMViewController: MVVMViewControllerDelegate {
    func getUserData(data: [UserModel]?) {
        guard let data = data else { return }
        self.data = data
    }
    
}
