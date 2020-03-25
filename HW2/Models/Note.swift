//
//  Note.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import Foundation

enum NoteType {
    case Later
    case ToDo
    case Reminder
}

class Note: Identifiable {
    let id = UUID()
    
    var title: String
    var description: String
    var isFavorite: Bool
    var creationDate: Date
    var isDeleted: Bool = false

    
    init(title: String, description: String, isFavorite: Bool) {
        self.title = title
        self.description = description
        self.isFavorite = isFavorite
        self.creationDate = Date()
    }
}
