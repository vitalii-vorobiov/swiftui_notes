//
//  UserManager.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    static var shared = UserManager()

    var user: User?
    @Published var isLoggedIn: Bool = false
    
    private init() {}
}
