//
//  ViewController.swift
//  swiftly-battle-net
//
//  Created by Jeff Scaturro on 05/23/2016.
//  Copyright (c) 2016 Jeff Scaturro. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import swiftly_battle_net

class ViewController: UIViewController {
    let battleNetApi = APIManager.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupApiManager()
        
        getExampleAchievement()
    }

    func setupApiManager() {
        // I am including this key out of kindness to allow for an easy demo of this pod. 
        // This key is under the basic plan, 100 calls per second, 36,000 calls per hour.
        battleNetApi.apiKey = "ytxn2tb2sxb9pnf7tf5kmqv2rcm9k6hf"
    }
    
    func getExampleAchievement() {
        let request = Alamofire.request(battleNetApi.getAchievement("2144"))
            .responseJSON { response in
                guard response.result.error == nil else {
                    print(response.result.error!)
                    return
                }
                
                if let value: AnyObject = response.result.value {
                    let post = JSON(value)
                    
                    print("The post is: " + post.description)
                    if let title = post["title"].string {
                        print("The title is: " + title)
                    } else {
                        print("error parsing achievement 2144")
                    }
                }
        }
        
        debugPrint(request)
    }
}

