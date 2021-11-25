//
//  BooksPresenter.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation

class NewsPresenter: NewsPresetnerProtocol {
    var news : News?
    
    weak var view: NewsViewProtocol?
    private let router: NewsRouterProtocol
    private let interactor: NewsInteractorInputProtocol
    
    init(view: NewsViewProtocol, router: NewsRouterProtocol, interactor: NewsInteractorInputProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func fetchNewsData() {
        //data is not set in the presenter
        interactor.fetchNewsData()
    }
    
    
}
