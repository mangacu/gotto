//
//  ProfileViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/12/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBAction func aboutUsAction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.google.com")!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
