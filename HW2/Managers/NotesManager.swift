//
//  NotesManager.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import Foundation

class NotesManager: ObservableObject {
    static let shared = NotesManager()
    
    var Notes: [Note] = [
        ToDoNote(title: "First ToDo", description: "ToDo description", isFavorite: false, dueDate: Date()),
        ToDoNote(title: "Second ToDo", description: "ToDo description", isFavorite: false, dueDate: Date()),
        ReminderNote(title: "First Reminder", description: "Reminder description", isFavorite: true, dueDate: Date()),
        ReminderNote(title: "Second Reminder", description: "Reminder description", isFavorite: false, dueDate: Date()),
        LaterNote(title: "First Later", description: "Later description", isFavorite: false),
        LaterNote(title: "Second Later", description: "Later description", isFavorite: true),
        
    ]
    
    private init() {
        
    }
}
