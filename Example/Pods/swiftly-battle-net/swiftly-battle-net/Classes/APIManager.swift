//
//  APIManager.swift
//  Pods
//
//  Created by Jeff Scaturro on 5/29/16.
//
//

import Foundation
import Alamofire

public class APIManager {
    
    public class var sharedInstance: APIManager {
        struct Singleton {
            static let instance : APIManager = APIManager()
        }
        return Singleton.instance
    }
    
    let manager = Manager()
    
    init() { }
}