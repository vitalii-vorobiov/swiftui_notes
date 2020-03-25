//
//  UserProfile.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    
    @Binding var fullName: String
    @Binding var email: String
    @Binding var birthday: Date
    
    @Binding var notesAmount: Int
    @Binding var favoriteAmount: Int
    @Binding var deletedAmount: Int
    
    var body: some View {
        VStack {
            CircleImage()
            Text("USER INFO").bold()
            UserInfo(fullName: $fullName, email: $email, birthday: $birthday)
            Text("NOTES INFO").bold()
            NotesInfo(notesAmount: $notesAmount, favoriteAmount: $favoriteAmount, deletedAmount: $deletedAmount)
        }
    }
}

#if DEBUG
struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(fullName: .constant("Name Surname"), email: .constant("email@email.com"), birthday: .constant(Date()), notesAmount: .constant(42), favoriteAmount: .constant(25), deletedAmount: .constant(99))
    }
}
#endif
