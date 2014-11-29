//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by Samuel Hooker on 28/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

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
   

}
