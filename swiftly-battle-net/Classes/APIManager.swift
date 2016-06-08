//
//  APIManager.swift
//  swiftly-battle-net
//
//  Created by Jeff Scaturro on 5/29/16.

import Foundation
import Alamofire

public class APIManager {
    /**
        Shared instance that we'll access to get our APIManager object.
     */
    public static let sharedInstance = APIManager()
    
    /**
        API Key that is from your registration at https://dev.battle.net/apps/mykeys.
    */
    public var apiKey: String = ""
    
    /**
        What locale to use in the response, defaults to en_US.
     
        Three available types: "en_US", "pt_BR", or "es_MX"
    */
    public var locale: String = "en_US"
    
    /**
        Request data to be returned as a JsonP callback.
    */
    public var jsonp: String = ""
    
    public func getAchievement(achievementId: String) -> NSMutableURLRequest {
        return AchievementsAPI().getAchievement(achievementId)
    }
}
