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
    
    func fetchNewsData(){
        NetworkService.shared.fetchData {[weak self] news, error in
            self?.presenter?.news = news
        }
    }
}
