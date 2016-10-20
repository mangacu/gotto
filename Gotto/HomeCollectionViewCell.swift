//
//  HomeCollectionViewCell.swift
//  Gotto
//
//  Created by Janeto Mac on 10/11/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var alphaView: UIView!
    @IBOutlet weak var lblComingSoon: UILabel!
    
    var isComingSoon:Bool? {
        didSet {
            if isComingSoon == false {
                alphaView.hidden = true
                lblComingSoon.hidden = true
            } else {
                alphaView.hidden = false
                lblComingSoon.hidden = false
            }
        }
    }
    
    var labelName:String? {
        didSet {
            lblName.text = labelName
        }
    }
    
    var imageBackground:UIImage? {
        didSet {
            backgroundImage.image = imageBackground
        }
    }
}
