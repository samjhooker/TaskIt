//
//  Date.swift
//  TaskIt
//
//  Created by Samuel Hooker on 27/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import Foundation

class Date{
    
    class func from (#year:Int, month:Int, day:Int) -> NSDate {
        
        var componants = NSDateComponents()
        componants.year = year
        componants.month = month
        componants.day = day
        
        var gregorianCalendar = NSCalendar(identifier: NSGregorianCalendar) //creates an NSCallender instance that can be used to create a NSDate
        var date = gregorianCalendar.dateFromComponents(componants)
        
        return date!

    }
    
    
    class func toString(#date:NSDate) -> String {
        
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "dd.MM.yyyy"
        let dateString = dateStringFormatter.stringFromDate(date)
        
        return dateString
    }
}