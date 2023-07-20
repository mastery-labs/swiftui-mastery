//
//  TaskRow.swift
//  Date Planner
//
//  Created by admin on 7/19/23.
//

import SwiftUI

struct TaskRow: View {
    @Binding var task: EventTask
    var isEditing : Bool
    @FocusState private var isFocused:Bool
    
    var body: some View {
        HStack {
            Button {
                task.isCompleted.toggle()
            } label: {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
            }
            .buttonStyle(.plain)
            
            if isEditing || task.isNew {
                TextField("Task Description", text: $task.text)
                    .focused($isFocused)
                    .onChange(of: isFocused) { newValue in
                        if newValue == false {
                            task.isNew = false
                        }
                    }
            } else {
                Text(task.text)
            }
            
            Spacer()
        }
        .padding(.vertical,10)
        .task {
            if task.isNew {
                isFocused = true
            }
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: .constant(EventTask(text: "Do Something!")), isEditing: false)
    }
}
