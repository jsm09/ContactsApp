//
//  Contact.swift
//  Contacts App
//
//  Created by Laura Ware on 7/25/16.
//  Copyright © 2016 Laura Ware. All rights reserved.
//

import Foundation
import UIKit

struct phoneNumber {
    var areaCode: Int
    var firstThree: Int
    var lastFour: Int
}
class Contact: NSObject {
    
    var firstName: String?
    var lastName: String?
    var phone: phoneNumber?
    var phoneNumberDisplayed: String?
    var nameDisplayed: String?
    
    init(firstName: String? = nil, lastName: String? = nil, phone: phoneNumber? = nil) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        if let phoneValue = phone {
        self.phoneNumberDisplayed = "\(phoneValue.areaCode)-\(phoneValue.firstThree)-\(phoneValue.lastFour)"
        }
        else {self.phoneNumberDisplayed = nil}
        
        if let firstName = firstName {
            
            if let lastName = lastName {
                self.nameDisplayed = firstName + " " + lastName
            }
            else {self.nameDisplayed = firstName}

        }
        else if let lastName = lastName {
            self.nameDisplayed = lastName
        }
        
        else {
            self.nameDisplayed = nil
        }

        super.init()
        
    }
    
    
}
