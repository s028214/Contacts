//
//  Navigation.swift
//  Contacts
//
//  Created by Mason Zhu (student LM) on 11/18/24.
//

import SwiftUI

struct Navigation: View {
    @State var contact: Contact = Contact()
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: 
                ContactDetailView(contact: contact))  {
                ContactView(contact: Contact())
            }
        })
    }
}

#Preview {
    Navigation()
}
