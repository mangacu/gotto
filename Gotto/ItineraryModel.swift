//
//  ItineraryModel.swift
//  Gotto
//
//  Created by Janeto Mac on 10/13/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ItineraryModel {
    var imageBackground:UIImage
    var countryName:String
    var peopleCount:Int
    var vineyardCount:Int
    var time:String
    
    init(image: UIImage, countryName: String, peopleCount: Int, vineyardCount: Int, time: String) {
        self.imageBackground = image
        self.countryName = countryName
        self.peopleCount = peopleCount
        self.vineyardCount = vineyardCount
        self.time = time
    }
}
