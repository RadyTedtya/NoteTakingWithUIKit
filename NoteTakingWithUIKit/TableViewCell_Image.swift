//
//  TableViewCell_Image.swift
//  NoteTakingWithUIKit
//
//  Created by Tedtya rady on 17/2/2023.
//

import UIKit

class TableViewCell_Image: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var noteDescriptionLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        self.setupUI()
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    private func setupUI() {
//        self.contentView.addSubview(ImageTableViewCell())
//    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print("cell selected")
    }
}
