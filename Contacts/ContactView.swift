//
//  ContactView.swift
//  Contacts
//
//  Created by Mason Zhu (student LM) on 11/12/24.
//

import SwiftUI

struct ContactView: View {
    var contact: Contact
    
    var body: some View {
        ZStack {
                /*
                 //  let bob = Contact() // default
                 /* let steve = Contact(name: "Steve", phoneNumber: "623-482-2384", emailAddress: "steve@steve.com")
                  
                  example without using default parameters of Contact class, which defaults to Bob.
                  */ // non-default example
                 */
            Rectangle()
                .foregroundColor(Color.gray.opacity(0.1))
                .cornerRadius(5)
            
                HStack {
                   
                    
                    
                    Image(contact.picture)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 70)
                    VStack(alignment: .leading){
                        Text(contact.name)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                        Text(contact.phoneNumber)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                        Text(contact.emailAddress)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                    } .padding(.horizontal)
                    Spacer()
                }.padding()
      
        }
       
    }
}
#Preview {
    ContactView(contact: Contact())
}
