//
//  NetworkService.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation
import Alamofire

protocol APIService {
    func fetchData()
}

final class NetworkService: APIService {
    static let shared = NetworkService()
    private init(){}
    
    func fetchData() {
        AF.request(NetworkRouter.topHeadlines).responseDecodable { (response : DataResponse<News, AFError>) in
            switch response.result {
            case .failure(let error):
                print("There was an error fetching news data. \(error.localizedDescription)")
            case .success(let news):
                print(news)
            }
        }
    }
    
}
