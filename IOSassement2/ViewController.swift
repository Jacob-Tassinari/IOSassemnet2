//
//  ViewController.swift
//  IOSassement2
//
//  Created by Jacob Tassinari on 10/25/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //mark:Properties
    @IBOutlet var FirstText: UITextField!
    @IBOutlet var LastText: UITextField!
    @IBOutlet var EmailText: UITextField!
    
    //mark: Button
    @IBAction func SubmitTapped(_ sender: Any) {
        guard
            let first = FirstText.text, !first.isEmpty,
            let last = LastText.text, !last.isEmpty,
            let email = EmailText.text, !email.isEmpty
            else{
                //mark: error alert
                let errorAlert = UIAlertController(title: "Error", message: "Please fill out all of the fields.", preferredStyle: UIAlertController.Style.alert)
                let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){UIAlertAction in}
                errorAlert.addAction(dismissAction)
                self.present(errorAlert, animated: true, completion: nil)
                return
        }
        // mark: New person
        let NewPerson = Person(firstName: first, lastName: last, Email: email)
        
        // mark: Greetings alert
        let NewAlert = UIAlertController(title: "Greeting!", message: "Hello, \(NewPerson.firstName) \(NewPerson.lastName)! Your email is \(NewPerson.Email)", preferredStyle: UIAlertController.Style.alert)
        let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){UIAlertAction in}
        NewAlert.addAction(dismissAction)
        self.present(NewAlert, animated: true, completion: nil)
        return
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // mark: tapp gesture to turn off keyboard
self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }


}

