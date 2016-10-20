//
//  ItineraryViewController+Delegate.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit


extension ItineraryViewController: UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //        let iti3 = ItineraryModel(image: UIImage(named: "5")!, countryName: "VIETNAM", peopleCount: 3, vineyardCount: 3, time: "Nov 7")
        //        upComingTrips.append(iti3)
        //        self.collectionView.reloadData()
        
        if indexPath.item == 0 || indexPath.item == upComingTrips.count + 1 {
            return
        }
        
        self.performSegueWithIdentifier("showDetailItinerary", sender: self)
    }
    
}