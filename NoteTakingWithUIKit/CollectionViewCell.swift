//
//  CollectionViewCell.swift
//  NoteTakingWithUIKit
//
//  Created by Tedtya rady on 17/2/2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var cellNameLabel: UILabel!
    var isHeightCalculated: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
