//
//  UserInfo.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct UserInfo: View {
    var body: some View {
        VStack {
            HStack {
                Text("Name").bold()
                Spacer()
                Text("Vitaliy")
            }
            HStack {
                Text("Surname").bold()
                Text("Vorobyov")
            }
            HStack {
                Text("Birthday").bold()
                Text("25.07.1999")
            }
            HStack {
                Text("Email").bold()
                Text("vitaliy.vorobyov25@gmail.com")
            }
        }
    .
    }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}
