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
    var collectionView: CollectionViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath)
        return cell
    }
    func setup() {
        tableView.register(UINib(nibName: "ImageCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "ImageCustomTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        title = "HomeView"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle.fill"), style: .plain, target: self, action: #selector(barButton))
//        view.addSubview(segmentSection())
        tableView.tableHeaderView = searchController.searchBar
        searchController = .init()
//        view.addSubview(segmentSection())
//        searchController.searchResultsUpdater = self
//        searchController.dimsBackgroundDuringPresentation = false
//        definesPresentationContext = true
    }

    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
    @objc func barButton() {
    
    }
    
//    func segmentSection() -> UIView {
//        let segmentView = UIView()
//        segmentView.frame.size.width = view.frame.width
//        segmentView.frame.size.height = 150
//        segmentView.backgroundColor = UIColor.red
//        return segmentView
//    }
    

}




extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell =  tableView.dequeueReusableCell(withIdentifier: "ImageCustomTableViewCell", for: indexPath)
        cell.backgroundColor = UIColor.primaryBackgroundColor
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: .init(x: 0, y: 0, width: tableView.frame.width, height: 40))
//        let label = UILabel(frame: headerView.frame)
//        label.text = "Hello"
//        headerView.addSubview(label)
//        headerView.addSubview(collectionView(collectionView: , cellForItemAt: ))
        return headerView
    }
    
}



/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
