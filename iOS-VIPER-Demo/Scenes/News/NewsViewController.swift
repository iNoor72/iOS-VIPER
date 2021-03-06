//
//  ViewController.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 08/10/2021.
//

import UIKit

class NewsViewController: UIViewController, NewsViewProtocol {

    var presenter: NewsPresetnerProtocol?
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: Constants.newsCellID, bundle: nil), forCellReuseIdentifier: Constants.newsCellID)
        fetchData()
    }
    
    func fetchData() {
        showLoadingIndicator()
        presenter?.fetchNewsData()
        hideLoadingIndicator()
    }
    
    func showLoadingIndicator() {
        loadingIndicator.isHidden = false
        loadingIndicator.startAnimating()
    }
    
    func hideLoadingIndicator() {
        loadingIndicator.stopAnimating()
        loadingIndicator.isHidden = true
    }
    
    func reloadData() {
        self.tableView.reloadData()
    }
}

