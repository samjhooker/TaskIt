//
//  TaskModel.swift
//  TaskIt
//
//  Created by Samuel Hooker on 27/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import Foundation

struct TaskModel {
    var task:String
    var subtask:String
    var date:NSDate  //NSDate not curretnly a well supported datatype therefore one must create a seperate Date Class
}
