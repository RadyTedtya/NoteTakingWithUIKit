//
//  WelcomeViewController.swift
//  NoteTakingWithUIKit
//
//  Created by Tedtya rady on 11/2/2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func onClick() {
        let controller = UINavigationController(rootViewController: HomeViewController())
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
