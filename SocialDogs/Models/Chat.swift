//
//  Chat.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import Foundation
import SwiftUI

struct Chat : Identifiable, Hashable {
    let id = UUID()
    let number: Int
    let message: String
}
