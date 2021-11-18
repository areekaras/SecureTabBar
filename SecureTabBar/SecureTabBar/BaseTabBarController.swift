//
//  BaseTabBarController.swift
//  SecureTabBar
//
//  Created by Shibili Areekara on 18/11/21.
//

import UIKit

class BaseTabBarController:UITabBarController {}

extension BaseTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        guard let viewController = viewController as? LoginHandler else {
            return true
        }
        
        let isLoggedIn = viewController.isLoggedIn()
        
        if !isLoggedIn {
            let vc = self.storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginVC
            self.present(vc, animated: true, completion: nil)
            
        }
        
        return isLoggedIn
    }
}
