//
//  MainCell.swift
//  Companies
//
//  Created by Rudson Lima on 7/15/16.
//  Copyright © 2016 Rudson Lima. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {

    @IBOutlet var txtName: UILabel!
    @IBOutlet var imgIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
