//
//  MainView.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var userManager: UserManager
    
    @ViewBuilder
    var body: some View {
        if userManager.isLoggedIn {
            AppView().environmentObject(userManager)
        } else {
            LoginScreen()
        }
    }
}

#if DEBUG
let userManager = UserManager.shared

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(userManager)
    }
}
#endif
