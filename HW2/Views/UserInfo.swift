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
            }.padding()
            HStack {
                Text("Surname").bold()
                Spacer()
                Text("Vorobyov")
            }.padding()
            HStack {
                Text("Birthday").bold()
                Spacer()
                Text("25.07.1999")
            }.padding()
            HStack {
                Text("Email").bold()
                Spacer()
                Text("vitaliy.vorobyov25@gmail.com")
            }.padding()
        }
    }
}

#if DEBUG
struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}
#endif
