//
//  BaseRouter.swift
//  Pods
//
//  Created by Jeff Scaturro on 5/29/16.
//
//

import Foundation
import Alamofire

public typealias JSONDictionary = [String: AnyObject]
typealias APIParams = [String : AnyObject]?

protocol APIConfiguration {
    var method: Alamofire.Method { get }
    var encoding: Alamofire.ParameterEncoding? { get }
    var path: String { get }
    var parameters: APIParams { get }
    var baseUrl: String { get }
}

class BaseRouter: URLRequestConvertible, APIConfiguration {
    init() {}
    
    var method: Alamofire.Method {
        fatalError("[\(reflect(self).summary) - \(__FUNCTION__))] Must be overridden in subclass")
    }
    
    var encoding: Alamofire.ParameterEncoding? {
        fatalError("[\(reflect(self).summary) - \(__FUNCTION__))] Must be overridden in subclass")
    }
    
    var path: String {
        fatalError("[\(reflect(self).summary) - \(__FUNCTION__))] Must be overridden in subclass")
    }
    
    var parameters: APIParams {
        fatalError("[\(reflect(self).summary) - \(__FUNCTION__))] Must be overridden in subclass")
    }
    
    var baseUrl: String {
        let baseUrl = NSBundle.mainBundle().stringForKey("API_BASE_URL")!
        return baseUrl
    }
    
    var URLRequest: NSURLRequest {
        let baseURL = NSURL(string: baseUrl);
        let URLRequest = NSURLRequest(URL: baseURL!.URLByAppendingPathComponent(path))
        let mutableURLRequest = NSMutableURLRequest(URL: baseURL!.URLByAppendingPathComponent(path))
        mutableURLRequest.HTTPMethod = method.rawValue
        
        if let encoding = encoding {
            return encoding.encode(mutableURLRequest, parameters: parameters).0
        }
        
        return mutableURLRequest
    }
}