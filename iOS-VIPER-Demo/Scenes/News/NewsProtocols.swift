//
//  NewsProtocols.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation

protocol NewsViewProtocol: AnyObject {
    var presenter: NewsPresetnerProtocol? { get set }
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func reloadData()
}

protocol NewsPresetnerProtocol {
    var view: NewsViewProtocol? { get set }
    var news: News? { get set }
    func fetchNewsData()
    func getNewsCount() -> Int
}

protocol NewsRouterProtocol {
    
}

protocol NewsInteractorInputProtocol {
    var presenter: NewsInteractorOutputProtocol? { get set }
    func fetchNewsData()
}

protocol NewsInteractorOutputProtocol {
    //It's the presenter, but can be used for different output
    func newsFetchedSuccessfully(news: News)
    func newsNotFetched(error: Error)
}
