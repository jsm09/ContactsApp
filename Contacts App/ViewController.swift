//
//  ViewController.swift
//  Contacts App
//
//  Created by Laura Ware on 7/25/16.
//  Copyright © 2016 Laura Ware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // Show the contact infoooo!!!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        /*
        let contactsDetailViewController = segue.destinationViewController
        let nameDetail = UITextView(frame: CGRect(x: 0, y: 0, width: 300, height: 400))
        nameDetail.text = "Joe Shmoe"
        contactsDetailViewController.view = nameDetail
        */ /*
        if segue.identifier == "detail" {
            
            let contactsDetailViewController = segue.destinationViewController
            
            //contactsDetailViewController.view.backgroundColor = UIColor.redColor()
        }*/
    }

}

