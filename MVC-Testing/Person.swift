//
//  Person.swift
//  MVC-Testing
//
//  Created by Roydon Jeffrey on 12/15/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import Foundation

class Person {
    
    private var _firstName: String!
    private var _lastName: String!
    private var _newName: String!
    
    var firstName: String {
        get {
            return _firstName
        }set {
            _firstName = newValue
        }
    }
    var lastName: String {
        get {
            return _lastName
        }set {
            _lastName = newValue
        }
    }
    
    init(firstName2: String, lastName2: String, newName: String?) {
        self._firstName = firstName2
        self._lastName = lastName2
        self._newName = newName
    }
    
    var fullName: String {
        return "\(_firstName!) \(_lastName!)"
    }
    
    var newName: String {
        get {
            return _newName
        }set {
            _newName = newValue
            
            //Create an array for user input and make each word a separate item
            var namesArray: [String] = _newName.components(separatedBy: " ")
            
            //Check if the array has more than 1 item. If not, return the previous lastname with new first name
            if namesArray.count > 1 {
                firstName = namesArray[0]
                lastName = ""
                
                //Every other item in the array should be assigned to lastName with a space btw them
                for names in 1...namesArray.count - 1 {
                    lastName += namesArray[names] + " "
                }
            }else {
                firstName = namesArray[0]
                
            }
        }
    }
}
