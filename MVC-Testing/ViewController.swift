//
//  ViewController.swift
//  MVC-Testing
//
//  Created by Roydon Jeffrey on 12/15/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Views
    @IBOutlet var label: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var textField: UITextField!
    
    //Create new person
    let person = Person(firstName2: "Haile", lastName2: "Selassie I", newName: nil)
    
    @IBAction func rename(_ sender: Any) {
        
        //Make sure user does not leave textField empty
        if textField.text != "" {
            person.newName = textField.text!

            //Update label and empty out the textField
            label.text = person.fullName
            textField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //WRONG WAY: Manipulating data in the Controller
//        label.text = person.firstName + " " + person.lastName
        
        //CORRECT WAY: Passing data btw the View and Model
        label.text = person.fullName
        
        //WRONG WAY: Manipulating data in the Controller
//        image.layer.cornerRadius = 5.0
//        image.clipsToBounds = true
    }


}

