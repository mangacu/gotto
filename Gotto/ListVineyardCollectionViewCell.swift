//
//  ListVineyardCollectionViewCell.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ListVineyardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var filledHeart: UIImageView!
    
    
    var isFavorite:Bool = true {
        didSet {
            if isFavorite == true {
                filledHeart.image = UIImage(named: "filled_heart")
            } else {
                filledHeart.image = UIImage(named: "empty_heart")
            }
        }
    }
    
}
