//
//  User.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import Foundation

class User {
    var fullName: String
    var birthday: Date
    var email: String
    var photoURL: URL
    
    init(fullName: String, birthday: Date, email: String, photoURL: URL) {
        self.fullName = fullName
        self.birthday = birthday
        self.email = email
        self.photoURL = photoURL
    }
}
