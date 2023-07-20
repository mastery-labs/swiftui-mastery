//
//  ContentView.swift
//  Dynamic Notification Watch App Watch App
//
//  Created by admin on 7/20/23.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Request Permission"){
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]){ (success, error) in
                    if success {
                        print("All Set")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
            Button("Schedule Notification"){
                let content = UNMutableNotificationContent()
                content.title = "Drink some milk!"
                content.subtitle = "You have 10 sec"
                content.sound = .default
                content.categoryIdentifier = "myCategory"
                let category = UNNotificationCategory(identifier: "myCategory", actions: [], intentIdentifiers: [], options: [])
                
                UNUserNotificationCenter.current().setNotificationCategories([category])
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
                let request = UNNotificationRequest(identifier: "milk", content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request) {
 (error) in
                    if let error = error{
                        print(error.localizedDescription)
                    } else {
                        print("Scheduled Successfully")
                    }
                }
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
