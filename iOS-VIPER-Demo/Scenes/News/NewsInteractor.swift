//
//  BooksInteractor.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation

class NewsInteractor: NewsInteractorInputProtocol {
    var presenter: NewsPresetnerProtocol?
    
    func fetchNewsData(){
        NetworkService.shared.fetchData()
//        presenter?.news = data
    }
}
