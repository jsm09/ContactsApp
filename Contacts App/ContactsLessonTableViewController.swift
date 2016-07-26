//
//  ContactsLessonTableViewController.swift
//  Contacts App
//
//  Created by Laura Ware on 7/25/16.
//  Copyright © 2016 Laura Ware. All rights reserved.
//

import UIKit

class ContactsLessonTableViewController: UITableViewController {
    var contacts: [Contact] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contacts = [Contact(firstName: "Joe", lastName: "Shmoe", phone: phoneNumber(areaCode: 123, firstThree: 456, lastFour: 7890)), Contact(firstName: "Jill", lastName: "Hanson", phone: phoneNumber(areaCode: 234, firstThree: 765, lastFour: 4321)), Contact(firstName: "Abe", lastName: "Larson", phone: phoneNumber(areaCode: 123, firstThree: 456, lastFour: 7890)), Contact(lastName: "Shang", phone: phoneNumber(areaCode: 234, firstThree: 563, lastFour: 1234))]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.contacts.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = contacts[indexPath.row].nameDisplayed
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let indexPath: NSIndexPath = self.tableView.indexPathForCell(sender as! UITableViewCell)!
        let contact: Contact = self.contacts[indexPath.row]
        if segue.identifier == "detail" {
 
            let destination: DetailViewController = (segue.destinationViewController) as! DetailViewController
            destination.contact = contact
         }
    }

}
