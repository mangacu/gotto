//
//  HomeViewController+Delegate.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showDetailList", sender: self)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
}
