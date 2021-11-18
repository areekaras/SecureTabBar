//
//  LoginHandler.swift
//  SecureTabBar
//
//  Created by Shibili Areekara on 18/11/21.
//

import UIKit

protocol LoginHandler: class {
    func isLoggedIn() -> Bool
}

extension LoginHandler where Self: UIViewController {
    func isLoggedIn() -> Bool {
        return false
    }
}


