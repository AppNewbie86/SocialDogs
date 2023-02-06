//
//  WelcomeView.swift
//  SocialDogs
//
//  Created by Marcel Zimmermann on 06.02.23.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var showNextView = false

    
    var body: some View {
        ZStack {
            Image("backgroundDog")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Willkommen")
                    .font(.system(size: 44))
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                
                Text("Hier dreht sich alles um den Hund")
                    .font(.system(size: 24))
                    .multilineTextAlignment(.center)
                // 1 Button
                Button(action: {
                    self.showNextView = true
                }) {
                    Text("STARTEN")
                }.padding()
                    .frame(width: 200, height: 60)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
                    .cornerRadius(20)
                .sheet(isPresented: $showNextView) {
                    KontakteView(contacts: [
                        Contact(name: "Maria Härting", image: "second", messageTitle: "Mein Hund hat Auschlag", phoneNumber: "0174 34567899"),
                        Contact(name: "Dirk Slarowski", image: "lion", messageTitle: "Bitte Hunde Sitting an", phoneNumber: "0900 343234567"),
                        Contact(name: "Gina", image: "grandpa", messageTitle: "Hundefutter im Angebot", phoneNumber: "0162 123456"),
                        Contact(name: "Max", image: "fiver", messageTitle: "Hunderecht", phoneNumber: "0170 45234567"),
                        Contact(name: "Heino", image: "morta", messageTitle: "Giftköder", phoneNumber: "0162 123273634"),
                        Contact(name: "Gandalf", image: "nurse", messageTitle: "unbekannte Erkrankung", phoneNumber: "0177 123273634"),
                        Contact(name: "Sauron", image: "avatar", messageTitle: "Bitte um Hilfe.....", phoneNumber: "01522 1273634"),
                        Contact(name: "Charly", image: "golf", messageTitle: "Welpenhilfe", phoneNumber: "01522 123273634")
                    ])
                }
                    
                }
            }
        }
    }


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
