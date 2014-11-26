//
//  ViewController.swift
//  TaskIt
//
//  Created by Samuel Hooker on 26/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { //adds table view datasource and delegate classes

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //default function must be added
        return 5  //number of rows shown
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //indexPath is the position in list, ie, 0->infinity
        println(indexPath.row)
        
        var cell:TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell  // creates a reusable cell, (specified as "myCell" within the storyboard), can reuse this cell and change the data for each item.
        
        //created these attributes as apart of the taskcell subclass
        cell.taskLabel.text = "Do Stuff"
        cell.subtaskLabel.text = "actually go aoutside and do stuff"
        cell.dateLabel.text = "01/01/2001"
        
        return cell
    }
    
    //UITableViewDelegate
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }


}

