//
//  DetailsCell.swift
//  TechnicalTask
//
//  Created by ahlam on 12/31/17.
//  Copyright © 2017 ahlam. All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {
    
    @IBOutlet weak var imageForTitle: UIImageView!
    
    @IBOutlet weak var title: UILabel!

    @IBOutlet weak var publisheDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
