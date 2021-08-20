//
//  LoginCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

class LoginCoordinator: LoginBaseCoordinator {

    var parentCoordinator: MainBaseCoordinator?
    lazy var rootViewController: UIViewController = UIViewController()
    
    func start() -> UIViewController? {
        let vc = LoginViewController.instantiate()
        vc.coordinator = self
        rootViewController = UINavigationController(rootViewController: vc)
        return rootViewController
    }
    
    func goToFavoritesFlow() {
        let window : UIWindow = UIApplication.shared.keyWindow!
        let mainCoordinator = MainCoordinator(window)
        mainCoordinator.startFlowType = .MainTabbarFlow
        mainCoordinator.start()
    }
    
    func goToRecoverPassword() {
        let vc = RecoverPasswordViewController.instantiate()
        vc.coordinator = self
        navigationRootViewController?.pushViewController(vc, animated: true)
    }
    
    func resetToRoot() -> Self {
        navigationRootViewController?.popToRootViewController(animated: false)
        return self
    }
}
