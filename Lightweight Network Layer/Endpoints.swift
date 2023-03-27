//
//  Endpoints.swift
//  Lightweight Network Layer
//
//  Created by Yamoses on 27/03/2023.
//

import Foundation

protocol Endpoints {
    // HTTP or HTTPS
    var scheme: String { get }
    
    //Example : "api.flickr.com"
    var baseURL: String { get }
    
    // "/services/rest/"
    var path: String { get }
    
    // [URLQueryItem(name: "api_key", value: API_KEY)
    var parameters: [URLQueryItem] { get }
    
    // "GET"
    var method: String { get }
}
