//
//  ViewController.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 08/10/2021.
//

import UIKit

class BooksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }
    
    func setTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: Constants.bookCellID, bundle: nil), forCellReuseIdentifier: Constants.bookCellID)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.bookCellID, for: indexPath) as! BookCell
        return cell
    }
    


}

