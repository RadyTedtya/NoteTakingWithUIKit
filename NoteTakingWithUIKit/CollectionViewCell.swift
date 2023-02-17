//
//  CollectionViewCell.swift
//  NoteTakingWithUIKit
//
//  Created by Tedtya rady on 17/2/2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var cellName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
//    let nameLabel: UILabel = {
//            let label = UILabel()
//            label.font = UIFont.systemFont(ofSize: 14)
//            label.textColor = UIColor.red
//            label.text = "Bob Lee"
//            label.translatesAutoresizingMaskIntoConstraints = false
//            return label
//        }()
}
