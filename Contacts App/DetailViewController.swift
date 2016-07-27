//
//  DetailViewController.swift
//  Contacts App
//
//  Created by Laura Ware on 7/26/16.
//  Copyright © 2016 Laura Ware. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneNumberField: UITextField!
    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self
        self.phoneNumberField.delegate = self
        // Do any additional setup after loading the view.
        if let contact = self.contact {
            
            if let name = contact.nameDisplayed {
            nameField.text = name
            }
            
            if let phoneNumber = contact.phoneNumberDisplayed {
                phoneNumberField.text = phoneNumber
            }
        }
        
    }
    

    
    func textFieldDidEndEditing(textField: UITextField) {
        if textField == self.nameField {
            self.contact?.nameDisplayed = textField.text
        }
        else if textField == self.phoneNumberField {
            self.contact?.phoneNumberDisplayed = textField.text
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Get the new view controller using segue.destinationViewController.
        let destination = segue.destinationViewController
        
        // Pass the selected object to the new view controller.
    }*/
    

}
