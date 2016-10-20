//
//  ItineraryCollectionViewCell.swift
//  Gotto
//
//  Created by Janeto Mac on 10/14/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ItineraryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var superView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var itineraryName: UILabel!
    @IBOutlet weak var itineraryTime: UILabel!
    @IBOutlet weak var itineraryPeople: UILabel!
    @IBOutlet weak var itineraryVineyard: UILabel!
    
    @IBOutlet weak var noDataView: UIView!
    @IBOutlet weak var noDataLabel: UILabel!
    
    var showSuperView:Bool = true {
        didSet {
            if showSuperView == true {
                self.superView.hidden = false
                self.noDataView.hidden = true
            } else {
                self.superView.hidden = true
                self.noDataView.hidden = false
            }
        }
    }
    
    var labelText:String = "" {
        didSet {
            self.noDataLabel.text = labelText.uppercaseString
        }
    }
    
    var itinerary: ItineraryModel? {
        didSet {
            if let image = itinerary?.imageBackground {
                self.imageView.image = image
            }
            if let name = itinerary?.countryName {
                self.itineraryName.text = name.uppercaseString
            }
            if let time = itinerary?.time {
                self.itineraryTime.text = time
            }
            if let peopleCount = itinerary?.peopleCount {
                self.itineraryPeople.text = String(peopleCount) + " people"
            }
            if let vineyardCount = itinerary?.vineyardCount {
                self.itineraryVineyard.text = String(vineyardCount) + " vineyard"
            }
        }
    }
    
}
