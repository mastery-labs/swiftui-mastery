//
//  Date_PlannerApp.swift
//  Date Planner
//
//  Created by admin on 7/19/23.
//

import SwiftUI

@main
struct Date_PlannerApp: App {
    @StateObject private var eventData = EventData()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            .environmentObject(eventData)
        }
    }
}
