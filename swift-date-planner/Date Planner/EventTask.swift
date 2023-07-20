//
//  EventTask.swift
//  Date Planner
//
//  Created by admin on 7/19/23.
//

import Foundation

struct EventTask : Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}

