//
//  ViewController.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 08/10/2021.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NewsViewProtocol {

    var presenter: NewsPresetnerProtocol?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: Constants.newsCellID, bundle: nil), forCellReuseIdentifier: Constants.newsCellID)
    }
    
    func showLoadingIndicator() {
        
    }
    
    func hideLoadingIndicator() {
        
    }
    
    //MARK: TableView Delegate & DataSource
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.newsCellID, for: indexPath) as! NewsCell
        return cell
    }
    


}

