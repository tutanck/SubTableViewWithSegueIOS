//
//  CarTableViewCell.swift
//  SubTableViewWithSegueIOS
//
//  Created by Zenika on 21/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imgImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
