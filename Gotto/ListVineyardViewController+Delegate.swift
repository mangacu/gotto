//
//  ListVineyardViewController+Delegate.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit


extension ListVineyardViewController: UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        print("select")
    }
}