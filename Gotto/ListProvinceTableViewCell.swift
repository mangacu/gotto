//
//  ListProvinceTableViewCell.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ListProvinceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblProvinceName: UILabel!
    
    var provinceName:String = "" {
        didSet {
            lblProvinceName.text = provinceName
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
