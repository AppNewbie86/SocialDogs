//
//  Contact.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import Foundation
import SwiftUI

struct Contact : Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: String
    let messageTitle: String
    let phoneNumber: String
}
