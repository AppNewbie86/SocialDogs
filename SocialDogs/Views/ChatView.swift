//
//  ChatView.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import SwiftUI

struct ChatView: View {
    @State private var messages = [ChatMessage]()
    @State private var messageTitle = ""
    @State private var messageText = ""

    var body: some View {
        VStack {
            List(messages) { message in
                HStack {
                    Text(message.title)
                        .font(.headline)
                    Spacer()
                }
                Text(message.message)
                    .font(.body)
            }
            HStack {
                TextField("Message Title", text: $messageTitle)
                TextField("Message", text: $messageText)
                Button(action: {
                    let newMessage = ChatMessage(title: self.messageTitle, message: self.messageText)
                    self.messages.append(newMessage)
                    self.messageTitle = ""
                    self.messageText = ""
                }) {
                    Text("Send")
                }
            }.padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
