//
//  HomeViewController.swift
//  NoteTakingWithUIKit
//
//  Created by Tedtya rady on 11/2/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var searchTextField: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        tableView.register(UINib(nibName: "ImageCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "ImageCustomTableViewCell")
        tableView.dataSource = self
        title = "HomeView"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle.fill"), style: .plain, target: self, action: #selector(barButton))
    }
    
    @objc func barButton() {
    
    }
    

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "ImageCustomTableViewCell", for: indexPath)

        return cell
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
