//
//  FlickrEndpoint.swift
//  Lightweight Network Layer
//
//  Created by Yamoses on 27/03/2023.
//

import Foundation

enum FlickrEndpoint: Endpoints {
    case getSearchResults(searchText: String, page: Int)
    
    var scheme: String {
        switch self {
        default:
            return "https"
        }
    }
    
    var baseURL: String {
        switch self {
        default:
            return "api.flickr.com"
        }
    }
    
    var path: String {
        switch self {
        case .getSearchResults:
            return "/services/rest/"
        }
    }
    
    var parameters: [URLQueryItem] {
        let apikey = "b9b28866e9cb88599d9f3bc56137e46b"
        
        switch self {
        case .getSearchResults(let searchText, let page):
            return [
                URLQueryItem(name: "text", value: searchText),
                URLQueryItem(name: "page", value: String(page)),
                URLQueryItem(name: "method", value: "flickr.photos.search"),
                URLQueryItem(name: "format", value: "json"),
                URLQueryItem(name: "per_page", value: "20"),
                URLQueryItem(name: "nojsoncallback", value: "1"),
                URLQueryItem(name: "api_key", value: apikey)]
        }
    }
    
    var method: String {
        switch self {
        case .getSearchResults:
            return "GET"
        }
    }
}
