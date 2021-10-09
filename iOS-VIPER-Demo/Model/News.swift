//
//  News.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation

struct News: Codable {
    var articles: [Article]
}

struct Article: Codable {
    var title: String
    var description: String
    var url: String
    var image: String
    
    enum CodingKeys: String, CodingKey {
        case image = "urlToImage"
        case title,description,url
    }
}
