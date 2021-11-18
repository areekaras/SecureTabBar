//
//  SceneDelegate.swift
//  SecureTabBar
//
//  Created by Shibili Areekara on 18/11/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var rootVC: BaseTabBarController!


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
        rootVC = self.window?.rootViewController as? BaseTabBarController
        rootVC.delegate = rootVC
    }

}

