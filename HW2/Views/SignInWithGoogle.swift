//
//  SignInApple.swift
//  HW2
//
//  Created by Vitaliy Vorobyov on 25.03.2020.
//  Copyright © 2020 Vitaliy Vorobyov. All rights reserved.
//

import Foundation
import GoogleSignIn
import SwiftUI

final class SignInWithGoogle: UIViewRepresentable {
    
    func makeUIView(context: Context) -> GIDSignInButton {
        let button = GIDSignInButton()
        button.colorScheme = .light
        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
        return button
    }
  
  func updateUIView(_ uiView: GIDSignInButton, context: Context) {
  }
}

struct SignInWithGoogle_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithGoogle()
    }
}
