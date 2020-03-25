//
//  LoginScreen.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        VStack {
            Spacer()
            Text("INotes")
                .bold()
                .font(.system(size: 60))
            Spacer()
            SignInWithGoogle()
                .frame(width: 120, height: 50)
        }
    }
}

#if DEBUG
struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
#endif
