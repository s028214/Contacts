//
//  Contact.swift
//  Contacts
//
//  Created by Mason Zhu (student LM) on 11/12/24.
//

import Foundation


struct Contact: Identifiable {
    let id = UUID()
    
    // struct store name, phone number, and email address
    var name: String
    var phoneNumber: String
    var emailAddress: String
    var picture: String
    
    init(name: String = "Bob", phoneNumber: String = "555-555-5555", emailAddress: String = "bob@bob.com", picture: String = "default") {
        self.name = name
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
        self.picture = picture
    }
}
