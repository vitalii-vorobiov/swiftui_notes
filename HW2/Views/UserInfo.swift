//
//  UserInfo.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct UserInfo: View {
    
    @Binding var fullName: String
    @Binding var email: String
    @Binding var birthday: Date
    
    let format = DateFormatter()
    
    var body: some View {
        VStack {
            HStack {
                Text("Full Name").bold()
                Spacer()
                Text(fullName)
            }.padding()
            HStack {
                Text("Email").bold()
                Spacer()
                Text(email)
            }.padding()
            HStack {
                Text("Birthday").bold()
                Spacer()
                Text(getBirthdayString())
            }.padding()
        }
    }
    
    func getBirthdayString() -> String {
        format.dateFormat = "yyyy-MM-dd"
        return format.string(from: birthday)
    }
}

#if DEBUG
struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo(fullName: .constant("Name Surname"), email: .constant("email@email.com"), birthday: .constant(Date()))
    }
}
#endif
