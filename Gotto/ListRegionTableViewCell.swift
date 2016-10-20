//
//  DetailListTableViewCell.swift
//  Gotto
//
//  Created by Janeto Mac on 10/11/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ListRegionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblComingSoon: UILabel!
    
    
    var isComingSoon:Bool? {
        didSet {
            if isComingSoon == true {
                lblComingSoon.hidden = false
            } else {
                lblComingSoon.hidden = true
            }
        }
    }
    
    var textName:String? {
        didSet {
            lblName.text = textName
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
