//
//  ContactDetailView.swift
//  Contacts
//
//  Created by Mason Zhu (student LM) on 11/18/24.
//

import SwiftUI

struct ContactDetailView: View {
    
    var contact: Contact
    
    var body: some View {
        VStack{
            Image(contact.picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Text(contact.name)
                .font(.largeTitle)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(contact.emailAddress)
                .font(.title)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(contact.phoneNumber)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }.padding()
    
    }
}

#Preview {
    ContactDetailView(contact: Contact())
}
