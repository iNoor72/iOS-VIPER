//
//  BooksPresenter.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation

class NewsPresenter: NewsPresetnerProtocol, NewsInteractorOutputProtocol {
    var news : News?
    
    weak var view: NewsViewProtocol?
    private let router: NewsRouterProtocol
    private let interactor: NewsInteractorInputProtocol
    var newsCount: Int?
    
    init(view: NewsViewProtocol, router: NewsRouterProtocol, interactor: NewsInteractorInputProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func fetchNewsData() {
        interactor.fetchNewsData()
    }
    
    
    func newsFetchedSuccessfully(news: News) {
        self.news = news
        self.newsCount = news.articles.count
        view?.reloadData()
        print("News from presenter. \(news)")
    }
    
    func newsNotFetched(error: Error) {
        print("Error from presenter. \(error.localizedDescription)")
    }
    
    func getNewsCount() -> Int {
        return newsCount ?? 0
    }
    
    
}
