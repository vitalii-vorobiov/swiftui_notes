//
//  UserProfile.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack {
            CircleImage()
            Text("Name").bold()
            Text("Vitaliy Vorobyov")
            Text("Birthday").bold()
            Text("Email").bold()
            
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
