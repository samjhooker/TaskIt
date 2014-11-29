//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Samuel Hooker on 27/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel: TaskModel!
    
    var mainVC:ViewController!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        taskTextField.text = self.detailTaskModel.task
        subtaskTextField.text = self.detailTaskModel.subtask
        dueDatePicker.date = detailTaskModel.date
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelButtonTapped(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true) // anytime where within view controler, one can access the naviagion conroller properties, this function simply pops back to the previous navigation controller
    }
    
    @IBAction func doneBarButtonPressed(sender: UIBarButtonItem) {
        
        var task = TaskModel(task: taskTextField.text, subtask: subtaskTextField.text, date: dueDatePicker.date)
        mainVC.taskArray[mainVC.tableView.indexPathForSelectedRow()!.row] = task //overrides current entry with this new/modified entry
        
        self.navigationController?.popViewControllerAnimated(true)//pops view controller, goes back to main VC
    }

}
