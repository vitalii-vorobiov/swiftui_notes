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
                            Text(note.title)
                        }
                    }
                }
                .navigationBarTitle("Notes")
                .navigationBarItems(trailing: Button(action: {
                    print("Add")
                }) {
                    Image(systemName: "plus")
                })
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
                            Text(note.title)
                        }
                    }
                }
                .navigationBarTitle("Favorites")
                .navigationBarItems(trailing: Button(action: {
                    print("Add")
                }) {
                    Image(systemName: "plus")
                })
                
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
                            Text(note.title)
                        }
                    }
                }
                .navigationBarTitle("Deleted")
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
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
