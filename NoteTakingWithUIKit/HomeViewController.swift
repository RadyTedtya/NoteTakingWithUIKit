//
//  HomeViewController.swift
//  NoteTakingWithUIKit
//
//  Created by Tedtya rady on 11/2/2023.
//

import UIKit

class HomeViewController: UIViewController, UISearchResultsUpdating {

    @IBOutlet weak var tableView: UITableView!
    var searchController = UISearchController(searchResultsController: nil)
//    var collectionView: CollectionViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    func setup() {
        tableView.register(UINib(nibName: "TableViewCell_Image", bundle: nil), forCellReuseIdentifier: "TableViewCell_Image")
//        tableView.dataSource = self
//        tableView.delegate = self
        title = "HomeView"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle.fill"), style: .plain, target: self, action: #selector(barButton))
        tableView.tableHeaderView = searchController.searchBar
        searchController = .init()
    }

    func updateSearchResults(for searchController: UISearchController) { }
    
    @objc func barButton() {
        print("profile clicked")
    }

}




extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell =  tableView.dequeueReusableCell(withIdentifier: "TableViewCell_Image", for: indexPath) as!  TableViewCell_Image
        cell.backgroundColor = UIColor.primaryBackgroundColor
        cell.dateLabel.text = "12 Jan 2022"
        cell.titleLabel.text = "My First Note"
        cell.noteDescriptionLabel.text = "ImageTableViewCell ImageTableViewCell ImageTableViewCell"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView(frame: .init(x: 0, y: 0, width: tableView.frame.width, height: 40))
//        return headerView
//    }
    
}



/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
