//
//  MainView.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var userData: UserManager
    
    @ViewBuilder
    var body: some View {
        if userData.isLoggedIn {
            AppView()
        } else {
            LoginScreen()
        }
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
