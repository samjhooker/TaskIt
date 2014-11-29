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
    
    
    var taskArray:[TaskModel] = [] // creates an array of dictionary tuples
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1 = TaskModel(task: "Study French", subtask: "Verbs", date: Date.from(year: 2014, month: 05, day: 20))
        let task2 = TaskModel(task: "Eat Dinner", subtask: "Burgers", date: Date.from(year: 2014, month: 06, day: 15))
        
        taskArray += [task1, task2, TaskModel(task: "Gym", subtask: "Leg Day", date: Date.from(year: 2014, month: 05, day: 29))]
        
        tableView.reloadData() //recalls the table view functions to update the table view
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showTaskDetail" { // the folowing sends te data from the TaskModels to taskDetailViewController
            let detailVC: TaskDetailViewController = segue.destinationViewController as TaskDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow()
            let thisTask = taskArray[indexPath!.row]
            detailVC.detailTaskModel = thisTask
        }
    }
    
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //default function must be added
        return self.taskArray.count  //number of rows shown
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //indexPath is the position in list, ie, 0->#items
        //println(indexPath.row)
        
        var cell:TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell  // creates a reusable cell, (specified as "myCell" within the storyboard), can reuse this cell and change the data for each item.
        
        let thisTask = taskArray[indexPath.row]
        
        //created these attributes as apart of the taskcell subclass
        cell.taskLabel.text = thisTask.task
        cell.subtaskLabel.text = thisTask.subtask
        //cell.dateLabel.text = "\(thisTask.date)" this will work but will add hour/min/sec aswell
        cell.dateLabel.text = Date.toString(date: thisTask.date)
        
        return cell
    }
    
    //UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println(indexPath.row)
        performSegueWithIdentifier("showTaskDetail", sender: self)
    }

    @IBAction func addButtonPressed(sender: AnyObject) {
        
        self.performSegueWithIdentifier("showTaskAdd", sender: self)
    }

}

