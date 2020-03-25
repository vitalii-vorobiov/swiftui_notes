//
//  User.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import Foundation

class User {
    var name: String
    var surname: String
    var birthday: Date
    var email: String
    
    init(name: String, surname: String, birthday: Date, email: String) {
        self.name = name
        self.surname = surname
        self.birthday = birthday
        self.email = email
    }
}
