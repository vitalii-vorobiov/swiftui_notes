//
//  ToDoNote.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import Foundation

class ToDoNote: Note {
    
    var type: NoteType = NoteType.ToDo;
    var dueDate: Date
    
    init(title: String, description: String, isFavorite: Bool, dueDate: Date) {
        self.dueDate = dueDate
        super.init(title: title, description: description, isFavorite: isFavorite)
    }
}
