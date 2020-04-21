//
//  NoteView.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 21.04.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct NoteView: View {
    var note: Note
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(note.description)
        }
        .navigationBarTitle(note.title)
        .navigationBarItems(trailing: Image(systemName: "star.fill").foregroundColor(note.isFavorite ? .yellow : .white))
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(note: ToDoNote(title: "First ToDo", description: "ToDo description", isFavorite: false, dueDate: Date()))
    }
}
