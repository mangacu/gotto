//
//  ItineraryViewController+DataSource.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit


extension ItineraryViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2 + upComingTrips.count + pastTrips.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ItineraryCollectionViewCell
        
        if indexPath.item == 0 || indexPath.item == upComingTrips.count + 1 {
            
            cell.showSuperView = false
            
            if indexPath.item == 0 {
                cell.labelText = "UP COMING TRIPS"
            } else {
                cell.labelText = "PAST TRIPS"
            }
            
        } else if indexPath.item > 0 && indexPath.item <= upComingTrips.count {
            cell.showSuperView = true
            cell.itinerary = upComingTrips[indexPath.item - 1]
        } else {
            cell.showSuperView = true
            cell.itinerary = pastTrips[indexPath.item - upComingTrips.count - 2]
        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        var height:CGFloat = 210
        
        if indexPath.item == 0 || indexPath.item == upComingTrips.count + 1 {
            height = 85
        }
        
        return CGSizeMake(view.frame.width, height)
    }
    
}
