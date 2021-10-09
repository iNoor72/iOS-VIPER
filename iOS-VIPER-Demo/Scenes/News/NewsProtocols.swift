//
//  NewsProtocols.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import Foundation

protocol NewsPresetnerProtocol {
    var view: NewsViewProtocol? { get set }
    
}

protocol NewsRouterProtocol {
    
}

protocol NewsViewProtocol: AnyObject {
    var presenter: NewsPresetnerProtocol? { get set }
}


protocol NewsInteractorInputProtocol {
    var presenter: NewsPresetnerProtocol? { get set }
}

protocol NewsInteractorOutputProtocol {
    
}
