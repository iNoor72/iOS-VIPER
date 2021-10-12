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
}


protocol NewsPresetnerProtocol {
    var view: NewsViewProtocol? { get set }
    var news: News? { get set }
}

protocol NewsRouterProtocol {
    
}

protocol NewsInteractorInputProtocol {
    var presenter: NewsPresetnerProtocol? { get set }
    func fetchNewsData() 
}

protocol NewsInteractorOutputProtocol {
    
}
