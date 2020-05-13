//
//  ContentView.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 24.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView() {
            
//            Notes
            
            NavigationView {
                List() {
                    ForEach(NotesManager.shared.Notes) { note in
                        if (!note.isFavorite && !note.isDeleted) {
                            NavigationLink(destination: NoteView(note: note)) {
                                Text(note.title)
                            }
                        }
                    }
                    .onDelete(perform: deleteNote)
                    .onMove(perform: onMove)
                }
                .navigationBarTitle("Notes")
                .navigationBarItems(trailing:
                    HStack {
                        EditButton()
                        
                        Button(action: {
                            print("Add")
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                )
            }
            .tabItem({
                Image(systemName: "doc.text")
                Text("Notes")
            })
            
//            Favorite Notes
            
            NavigationView {
                List() {
                    ForEach(NotesManager.shared.Notes) { note in
                        if (note.isFavorite && !note.isDeleted) {
                            NavigationLink(destination: NoteView(note: note)) {
                                Text(note.title)
                            }
                        }
                    }
                }
                .navigationBarTitle("Favorites")
                .navigationBarItems(trailing:
                    HStack {
                        Button(action: {
                            print("Edit")
                        }) {
                            Text("Edit")
                        }
                        .padding(.horizontal)
                        
                        Button(action: {
                            print("Add")
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                )
                
            }
            .tabItem({
                Image(systemName: "star.fill")
                Text("Favorite")
            })
            
//            Deleted Notes
            
            NavigationView {
                List() {
                    ForEach(NotesManager.shared.Notes) { note in
                        if (note.isDeleted) {
                            NavigationLink(destination: NoteView(note: note)) {
                                Text(note.title)
                            }
                        }
                    }
                }
                .navigationBarTitle("Deleted")
                .navigationBarItems(trailing:
                    HStack {
                        Button(action: {
                            print("Edit")
                        }) {
                            Text("Edit")
                        }
                    }
                )
            }
            .tabItem({
                Image(systemName: "trash")
                Text("Deleted")
            })
            
            UserProfile(fullName: .constant("Name Surnmae"), email: .constant("email@email.com"), birthday: .constant(Date()), notesAmount: .constant(42), favoriteAmount: .constant(25), deletedAmount: .constant(99)).tabItem({
                Image(systemName: "person")
                Text("User Profile")
            })
        }
    }
    
    private func deleteNote(at offsets: IndexSet) {
        print("Deleted")
        NotesManager.shared.Notes.remove(atOffsets: offsets)
    }
    
    private func onMove(source: IndexSet, destination: Int) {
        NotesManager.shared.Notes.move(fromOffsets: source, toOffset: destination)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
