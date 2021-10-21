//
//  NetworkService.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation
import Alamofire

protocol APIService {
    func fetchData<T:Decodable>(completion: @escaping (T?, Error?) -> ())
}

final class NetworkService: APIService {
    static let shared = NetworkService()
    private init(){}
    
    func fetchData<T:Decodable>(completion: @escaping (T?, Error?) -> ()) {
        AF.request(NetworkRouter.topHeadlines).responseDecodable { (response : DataResponse<T, AFError>) in
            switch response.result {
            case .failure(let error):
                print("There was an error fetching news data. \(error.localizedDescription)")
                completion(nil,error)
            case .success(let news):
                completion(news,nil)
            }
        }
    }
    
}
