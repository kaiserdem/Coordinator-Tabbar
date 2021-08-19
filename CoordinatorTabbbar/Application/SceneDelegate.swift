//
//  SceneDelegate.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 10.08.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let mainCoordinator = MainCoordinator(window!)
        mainCoordinator.startFlowType = .LoginFlow
        mainCoordinator.start()
        //window?.rootViewController = mainCoordinator.start()
       // window?.makeKeyAndVisible()
    }
    
}
