//
//  ItineraryDetailViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/18/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit
import GoogleMaps

class ItineraryDetailViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPeopleCount: UILabel!
    @IBOutlet weak var mapView: UIView!
    
    var googlemapView:GMSMapView! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        loadMap()
    }
    
    override func viewDidLayoutSubviews() {
        googlemapView.frame = self.mapView.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadMap() {
        let coordinate = CLLocationCoordinate2D(latitude: 26.9211992, longitude: 75.818293)
        
        let camera = GMSCameraPosition.cameraWithLatitude(coordinate.latitude, longitude: coordinate.longitude, zoom: 6)
        googlemapView = GMSMapView.mapWithFrame(self.mapView.bounds, camera: camera)
        googlemapView.myLocationEnabled = true
        
        self.mapView.addSubview(googlemapView)
        
        googlemapView.layer.cornerRadius = 20
    }

}
