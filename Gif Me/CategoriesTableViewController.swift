//
//  CategoriesTableViewController.swift
//  Gif Me
//
//  Created by jack.crawford-brown on 7/12/14.
//  Copyright (c) 2014 JCB. All rights reserved.
//

import Foundation
import UIKit
import CoreData


class CategoriesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var categoryTableView: UITableView
    
    var categories = ["Happy", "Angry", "Funny", "Silly", "Stupid", "Bambi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        //let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "MyClassCell") as CourseCell
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("CategoryCell", forIndexPath: indexPath) as UITableViewCell
        
        
        //cell.text = "Class #\(indexPath.row)"
        cell.text = categories[indexPath.row]
       
        cell.image = UIImage(named:"angrybaby.png")
        
        
        
        return cell
    }
   
    
}

