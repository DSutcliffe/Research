//
//  Service.swift
//  CompletionHandler
//
//  Created by Daniel Sutcliffe on 19/07/2022.
//

import UIKit

class Service {
    
//    static func grabDataFromDatabaseA(completion: @escaping () -> ()) {   // () -> () second () means Void
    static func grabDataFromDatabaseA(completion: @escaping () -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                completion()
            }
        }
    }
    
    static func grabDataFromDatabaseB(completion: @escaping (_ result: Int) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
            let result = 1
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                completion(result)
            }
        }
    }
    
    static func grabDataFromDatabaseC(completion: @escaping (_ result: Int?) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
            
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                completion(nil)
            }
        }
    }
    
}
