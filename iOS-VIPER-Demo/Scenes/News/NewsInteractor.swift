//
//  BooksInteractor.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation
import SwiftUI

class NewsInteractor: NewsInteractorInputProtocol {
    var presenter: NewsPresetnerProtocol?
    var news: News?
    
    func fetchNewsData(){
        NetworkService.shared.fetchData {[weak self] (news: News?, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            self?.presenter?.news = news
            self?.news = news
        }
    }
}
