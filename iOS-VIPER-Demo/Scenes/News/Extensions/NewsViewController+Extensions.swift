//
//  NewsViewController+Extensions.swift
//  iOS-VIPER-Demo
//
//  Created by Noor Walid on 05/12/2021.
//

import UIKit
import Kingfisher

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: TableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = presenter?.getNewsCount() else { return 0 }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.newsCellID, for: indexPath) as! NewsCell
        
        if let articleImage = presenter?.news?.articles[indexPath.row].image {
            cell.articleImage.kf.setImage(with: URL(string: articleImage))
        }
        cell.articleTitle.text = presenter?.news?.articles[indexPath.row].title
        
        return cell
    }

}
