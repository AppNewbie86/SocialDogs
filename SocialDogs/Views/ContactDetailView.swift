//
//  ContactDetailView.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import SwiftUI

struct ContactDetailView: View {
    
    @State private var showChatView = false
    
    
    var contact: Contact
    
    var body: some View {
        VStack {
            Image(contact.image)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(75)
            Text(contact.name)
                .font(.largeTitle)
            Text(contact.phoneNumber)
                .font(.headline)
            Spacer()
            
            // 1 Button
            Button(action: {
                self.showChatView = true
            }) {
                Text("STARTEN")
            }.padding()
                .frame(width: 200, height: 60)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .font(.system(size: 17))
                .sheet(isPresented: $showChatView) {
                    ChatView()
                }
                .padding()
                .navigationBarTitle(contact.name)
        }
    }
    
}
