//
//  MainCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

enum TabFlow {
    case Favorites
    case Tours
}

enum StartFlow {
    case LoginFlow
    case MainTabbarFlow
}

class MainCoordinator: MainBaseCoordinator {

    var parentCoordinator: MainBaseCoordinator?
    
    var startFlowType: StartFlow = .LoginFlow
    
    lazy var favoritesCoordinator: FavoritesBaseCoordinator = FavoritesCoordinator()
    lazy var toursCoordinator: ToursBaseCoordinator = ToursCoordinator()
    lazy var loginCoordinator: LoginBaseCoordinator = LoginCoordinator()

    lazy var rootViewController: UIViewController  = UITabBarController()
    private var window: UIWindow
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    @discardableResult
    func start() -> UIViewController? {
                
        switch startFlowType {
        
        case .LoginFlow:
            let loginViewController = loginCoordinator.start()
            loginCoordinator.parentCoordinator = self
            rootViewController = loginViewController!
            
        case .MainTabbarFlow:
            let homeViewController = favoritesCoordinator.start()
            favoritesCoordinator.parentCoordinator = self
            homeViewController!.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "face.smiling"), tag: 0)
            
            let ordersViewController = toursCoordinator.start()
            toursCoordinator.parentCoordinator = self
            ordersViewController!.tabBarItem = UITabBarItem(title: "Touts", image: UIImage(systemName: "doc.plaintext"), tag: 1)
            
            guard let homeVC = homeViewController, let ordersVC = ordersViewController else { return nil }
            
            (rootViewController as? UITabBarController)?.viewControllers = [homeVC,ordersVC]
        }
                
        self.window.rootViewController = rootViewController
        self.window.makeKeyAndVisible()
        
        return nil
    }
        
    func moveTo(flow: TabFlow) {
        switch flow {
        case .Tours:
            (rootViewController as? UITabBarController)?.selectedIndex = 1
        case .Favorites:
            (rootViewController as? UITabBarController)?.selectedIndex = 0
        }
    }
    
    func resetToRoot() -> Self {
        favoritesCoordinator.resetToRoot()
        moveTo(flow: .Favorites)
        return self
    }
    
}
