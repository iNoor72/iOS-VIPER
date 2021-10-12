//
//  BooksRouter.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 09/10/2021.
//

import UIKit

class NewsRouter: NewsRouterProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: Constants.newsVCID) as! NewsViewController
        let router = NewsRouter()
        let interactor = NewsInteractor()
        let presenter = NewsPresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
    
}
