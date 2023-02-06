//
//  ChatViewModel.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import SwiftUI
import Foundation
import Combine


// Hauptakteur festgelegt

@MainActor class ChatViewModel : ObservableObject{
    
    // Veröffentlichung / und Änderungen erlaubt
    // 3 leere Arrays vom jeweiligen Typ erstellt
    
    @Published var chatList : [Chat] = []
    @Published var contactList : [Contact] = []



    init(){

      

    }
    // holt sich den ChatIndex mit Parameter chat
    func getChatIndex(chat:Chat) -> Int{
        for index in chatList.indices {
            if(chatList[index].id == chat.id){
                return index
            }
        }
        return 0
    }
    // holt sich den ChatIndex mit Id
    func getChatIndex(id : UUID) ->Int{
        for index in chatList.indices{
            if(chatList[index].id == id){
                return index // gibt Index zurück
            }
        }
        return 0 // gibt zahl 0 zurück
    }
    
    // holt sich den ContactIndex mit Parameter contact
    func getContactIndex(contact : Contact) ->Int?{
        for index in contactList.indices{
            // wenn contactList der Index gleich Id und gleich Contact Id ist
            if(contactList[index].id == contact.id){
                // dann gib Index zurück
                return index
            }
        }
        return nil // gibt leeren Wert wieder
    }
    
    func updateContact(contact : Contact){
        guard let index = getContactIndex(contact: contact)
        else{
            return
        }
        
        contactList[index] = contact
    }
    
    
}

