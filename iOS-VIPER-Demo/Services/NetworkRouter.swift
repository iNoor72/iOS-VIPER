//
//  NetworkRouter.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation
import Alamofire

enum NetworkRouter: URLRequestConvertible {
    static let baseURL = "https://newsapi.org/v2"
    
    case topHeadlines
    
    var method: HTTPMethod {
        switch self {
        case .topHeadlines:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .topHeadlines:
            return "/top-headlines"
        }
    }
    
    var parameters: Parameters {
        switch self {
        case .topHeadlines:
            return ["country":"eg", "apiKey":Constants.apiKey]
        }
    }
    
    
    func asURLRequest() throws -> URLRequest {
        let url = URL(string: NetworkRouter.baseURL)?.appendingPathComponent(path)
        guard let safeURL = url else { return URLRequest(url: URL(string: "https://google.com")!)}
        var request = URLRequest(url: safeURL)
        request.method = method
        
        //Adding parameters here
        switch self {
        case .topHeadlines:
            request = try URLEncoding.default.encode(request, with: parameters)
        }
        
        return request
    }
    
    
}
