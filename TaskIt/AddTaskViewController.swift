//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by Samuel Hooker on 28/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    var mainVC: ViewController! //access task array class

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    

    @IBAction func cancelButtonTapped(sender: AnyObject) {
        //because we used modal transition (no nav controller) hence we cannot pop naviagion controller like in the detail VC
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
    @IBAction func addTaskButtonPressed(sender: UIButton) {
        var task = TaskModel(task: taskTextField.text, subtask: subtaskTextField.text, date: dueDatePicker.date)
        mainVC.taskArray.append(task) // adds item to the array int the main view controller
        self.dismissViewControllerAnimated(true, completion: nil)//dismisses view controller
    }

}
