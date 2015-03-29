//
//  LocationsViewController.swift
//  MyLocations
//
//  Created by 刘迪 on 3/29/15.
//  Copyright (c) 2015 roy. All rights reserved.
//

import UIKit
import CoreData
import CoreLocation


class LocationsViewController: UITableViewController {
    
    var managedObjectContext: NSManagedObjectContext!
    var locations = [Location]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetchRequest = NSFetchRequest()
        
        let entity = NSEntityDescription.entityForName("Location", inManagedObjectContext: managedObjectContext)
        fetchRequest.entity = entity
        
        
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LocationCell") as UITableViewCell
        
        let descriptionLabel = cell.viewWithTag(100) as UILabel
        descriptionLabel.text = "If you can see this"
        
        let addressLabel = cell.viewWithTag(101) as UILabel
        addressLabel.text = "Then it works!"
        
        return cell
    }
}
