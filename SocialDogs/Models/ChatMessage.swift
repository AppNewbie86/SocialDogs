//
//  ChatMessage.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import Foundation
import SwiftUI

struct ChatMessage : Identifiable, Hashable {
    let id = UUID()
    let title: String
    let message: String
}
