//
//  ListProvinceViewController+Delegate.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

extension ListProvinceViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showListVineyard", sender: self)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 63
    }
}