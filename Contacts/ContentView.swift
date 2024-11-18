//
//  ContentView.swift
//  Contacts
//
//  Created by Mason Zhu (student LM) on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    
    var contacts: [Contact] = [
        Contact(phoneNumber: "215-555-5555", emailAddress: "john@john.com"),
        Contact(name: "Juan", phoneNumber: "215-555-5555", emailAddress: "juan@NewWaveComputers.com"),
        Contact(name: "Trump", phoneNumber: "202-456-1414", emailAddress: "bigman@trump.com", picture: "trump"),
        Contact()
    ]
    
    var body: some View {
        // ContactView(contact: Contact())
       
        NavigationView {
            List(contacts) { c in
                NavigationLink {
                    ContactDetailView(contact: c)
                } label: {
                    ContactView(contact: c)
                }
            }

            
            List(contacts) {
                ContactView(contact: $0)
            }
        }
                
//        List{
//            ForEach(contacts) { c in
//                ContactView(contact: c)
//            }
//        }
    }
}

#Preview {
    ContentView()
}
