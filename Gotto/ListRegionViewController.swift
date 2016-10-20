//
//  TestViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/10/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ListRegionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var titleLabel = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.titleLabel)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}