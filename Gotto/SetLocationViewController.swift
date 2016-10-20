//
//  SetLocationViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/18/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit
import GoogleMaps

class SetLocationViewController: UIViewController {
    
    @IBOutlet weak var googleMapView: UIView!
    
    let markerHeight:CGFloat = 40
    let markerWidth:CGFloat = 20
    let buttonSize:CGFloat = 35
    var mapView:GMSMapView! = nil
    let locationManager = CLLocationManager()
    var markerView:UIImageView! = nil
    var button:UIButton! = nil
    
    
    @IBAction func setLocationAction(sender: AnyObject) {
        print(mapView.camera.target.longitude, mapView.camera.target.latitude)
        self.navigationController?.popViewControllerAnimated(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupMap()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
    
    override func viewDidLayoutSubviews() {
        markerView.frame = CGRect(x: self.googleMapView.frame.width/2 - markerWidth/2, y: self.googleMapView.frame.height/2 - markerHeight, width: markerWidth, height: markerHeight)
        
//        button.frame = CGRect(x: self.googleMapView.frame.width - buttonSize - 15, y: self.googleMapView.frame.height - buttonSize - 5, width: buttonSize, height: buttonSize)
        
        mapView.frame = self.googleMapView.bounds
    }
    
    func setupMap() {
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86, longitude: 151.20, zoom: 10.0)
        mapView = GMSMapView.mapWithFrame(self.googleMapView.bounds, camera: camera)
        mapView.myLocationEnabled = true
        
        self.googleMapView.addSubview(mapView)
        
        //        //range marker
        //        let circleView = UIView()
        //        circleView.userInteractionEnabled = true
        //        circleView.backgroundColor = UIColor.clearColor()
        //        self.googleMapView.addSubview(circleView)
        //        self.googleMapView.bringSubviewToFront(circleView)
        //        circleView.translatesAutoresizingMaskIntoConstraints = false
        //
        //        let heightConstraint = NSLayoutConstraint(item: circleView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 100)
        //        let widthConstraint = NSLayoutConstraint(item: circleView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 100)
        //        let centerXConstraint = NSLayoutConstraint(item: circleView, attribute: .CenterX, relatedBy: .Equal, toItem: self.googleMapView, attribute: .CenterX, multiplier: 1, constant: 0)
        //        let centerYConstraint = NSLayoutConstraint(item: circleView, attribute: .CenterY, relatedBy: .Equal, toItem: self.googleMapView, attribute: .CenterY, multiplier: 1, constant: 0)
        //        NSLayoutConstraint.activateConstraints([heightConstraint, widthConstraint, centerXConstraint, centerYConstraint])
        //
        //        self.googleMapView.updateConstraints()
        //        //change square to circle
        //        UIView.animateWithDuration(0.1, animations: {
        //            self.view.layoutIfNeeded()
        //            circleView.layer.cornerRadius = CGRectGetWidth(circleView.frame)/2
        //            circleView.clipsToBounds = true
        //        })
        
        //fixed marker
        
        markerView = UIImageView(frame: CGRect(x: self.googleMapView.frame.width/2 - markerWidth/2, y: self.googleMapView.frame.height/2 - markerHeight, width: markerWidth, height: markerHeight))
        markerView.image = UIImage(named: "marker")
        self.googleMapView.addSubview(markerView)
        
        
        
        //button location
        
//        button = UIButton(frame: CGRect(x: self.googleMapView.frame.width - buttonSize - 15, y: self.googleMapView.frame.height - buttonSize - 5, width: buttonSize, height: buttonSize))
//        button.backgroundColor = Const.gottoColor.Gray
//        button.layer.cornerRadius = 10
//        button.layer.borderColor = UIColor.darkGrayColor().CGColor
//        button.layer.borderWidth = 0.5
//        button.setTitle("hi", forState: .Normal)
//        button.addTarget(self, action: #selector(self.gotoMyLocation), forControlEvents: .TouchUpInside)
//        
//        self.googleMapView.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gotoMyLocation(sender: AnyObject) {
        print("goto my location")
    }

}