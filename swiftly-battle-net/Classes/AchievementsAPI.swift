//
//  AchievementsRouter.swift
//  swiftly-battle-net
//
//  Created by Jeffrey Scaturro on 6/7/16.

import Foundation
import Alamofire


internal class AchievementsAPI {
    let baseURLString = NSURL(string: "https://us.api.battle.net/wow/achievement/")
    
    // TODO: Return an object of type Achievement (yet to be constructed).
    public func getAchievement(id: String) -> NSMutableURLRequest {
        let url: NSURL = {
            let url = NSURL(string: "\(id)?locale=\(APIManager.sharedInstance.locale)&apikey=\(APIManager.sharedInstance.apiKey)",
                            relativeToURL:baseURLString)!
            
            return url
        }()
        
        let URLRequest = NSMutableURLRequest(URL: url)
        
        let encoding = Alamofire.ParameterEncoding.JSON
        let (encodedRequest, _) = encoding.encode(URLRequest, parameters: nil)
        
        encodedRequest.HTTPMethod = Alamofire.Method.GET.rawValue
        
        return encodedRequest
    }
}