//
//  ContentView.swift
//  Sending Local Notification
//
//  Created by admin on 7/20/23.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Tab me to activate notification") {
                scheduleNotification(title: "New Message", subTitle: "You received 3 messages from you team.", secondsLater: 5,isRepeating: false)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func scheduleNotification(title: String, subTitle: String, secondsLater: TimeInterval, isRepeating: Bool){
    // Request Access
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) {_, error in
        if let error {
            print("Application access not granted.", error.localizedDescription)
        }
    }
    
    // Define the Content
    let content = UNMutableNotificationContent()
    content.title = title
    content.subtitle = subTitle
    content.sound = .default
    
    // Define the Trigger
    let trigger  = UNTimeIntervalNotificationTrigger(timeInterval: secondsLater, repeats: isRepeating)
    
    // Define the Request
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    
    // Add the Request to the notification center of the current App
    UNUserNotificationCenter.current().add(request)
}
