//
//  Utilities.swift
//  TimeTravel
//
//  Created by Daniel J Janiak on 11/23/16.
//  Copyright © 2016 redwoodempiredev. All rights reserved.
//

import Foundation

class Utilities {
    
    
    func getCurrentYear() -> String {
        
        let date = Date()
        let calendar = Calendar.current
        
        return String(calendar.component(.year, from: date))
        
    }
    
    func getLetter(fromString: String, location: Int) -> String {
        
        let index = fromString.index(fromString.startIndex, offsetBy: location)
        
        return String(fromString[index])
        
    }
    
    func getCurrentTime() -> String {
        
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
    }
    
}
