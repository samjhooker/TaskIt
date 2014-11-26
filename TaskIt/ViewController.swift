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
    
    
    var taskArray:[Dictionary<String,String>] = [] // creates an array of dictionary tuples
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1:Dictionary<String,String> = ["task": "Study French", "subtask": "learning to use Verbs correctly", "date": "01/01/2002"]
        //can use certain bits of data, ie. task1["task"] = "Study French"
        
        let task2:Dictionary<String,String> = ["task": "Eat Dinner", "subtask": "eat all the brocolli until you are no longer hungry", "date": "02/01/2002"]
        
        let task3:Dictionary<String,String> = ["task": "go to Gym", "subtask": "Do not be fat", "date": "03/01/2002"]
        
        taskArray += [task1, task2, task3]
        
        tableView.reloadData() //recalls the table view functions to update the table view
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //default function must be added
        return self.taskArray.count  //number of rows shown
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //indexPath is the position in list, ie, 0->#items
        //println(indexPath.row)
        
        var cell:TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell  // creates a reusable cell, (specified as "myCell" within the storyboard), can reuse this cell and change the data for each item.
        
        let taskDict:Dictionary = taskArray[indexPath.row]
        
        //created these attributes as apart of the taskcell subclass
        cell.taskLabel.text = taskDict["task"]
        cell.subtaskLabel.text = taskDict["subtask"]
        cell.dateLabel.text = taskDict["date"]
        
        return cell
    }
    
    //UITableViewDelegate
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }


}

