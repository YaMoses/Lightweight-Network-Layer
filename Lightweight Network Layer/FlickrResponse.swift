//
//  FlickrResponse.swift
//  Lightweight Network Layer
//
//  Created by Yamoses on 27/03/2023.
//

import Foundation

struct FlickrResponse: Codable {
    let photos: FlickrResultsPage
}

struct FlickrResultsPage: Codable {
    let page: Int
    let pages: Int
    let photo: [FlickPhoto]
}

struct FlickPhoto: Codable {
    let id: String
    let owner: String
    let secret: String
    let server: String
    let farm: Int
}
