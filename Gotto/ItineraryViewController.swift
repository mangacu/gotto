//
//  WishListsViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/13/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ItineraryViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var upComingTrips:[ItineraryModel] = [ItineraryModel]()
    var pastTrips:[ItineraryModel] = [ItineraryModel]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let iti1 = ItineraryModel(image: UIImage(named: "5")!, countryName: "Italy", peopleCount: 4, vineyardCount: 3, time: "Dec 11")
        let iti2 = ItineraryModel(image: UIImage(named: "5")!, countryName: "Roma", peopleCount: 3, vineyardCount: 8, time: "Dec 11")
        
        upComingTrips.append(iti1)
        upComingTrips.append(iti2)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
        
        if segue.identifier == "showDetailItinerary" {
//            let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
//            let indexPath = indexPaths[0] as NSIndexPath
//            
//            let vc = segue.destinationViewController as! ItineraryDetailViewController
            
        }
    }

}