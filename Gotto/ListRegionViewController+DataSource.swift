//
//  ListRegionViewController+DataSource.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

// MARK: - UITableViewDataSource
extension ListRegionViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ListRegionTableViewCell
        
        cell.addBorder(edges: [.Bottom], colour: UIColor.lightGrayColor(), thickness: 1)
        cell.textName = "Abruzzo"
        
        if indexPath.row == 0 {
            cell.isComingSoon = true
        }
        
        return cell
    }
}