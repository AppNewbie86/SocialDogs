//
//  KontakteView.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import SwiftUI

struct KontakteView: View {
    var contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    HStack {
                        Image(contact.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                        VStack(alignment: .leading) {
                            Text(contact.name)
                                .font(.headline)
                            Text(contact.messageTitle)
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationBarTitle("Kontakte")
        }
    }
}
