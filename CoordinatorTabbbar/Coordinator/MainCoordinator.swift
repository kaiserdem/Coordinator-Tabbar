//
//  MainCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

enum AppFlow {
    case MostViewed
    case Favorites
}

enum StartFlow {
    case MainTabbarFlow
    case LoginFlow
}

class MainCoordinator: MainBaseCoordinator {

    var parentCoordinator: MainBaseCoordinator?
    
    var startFlowType: StartFlow = .LoginFlow
    
    lazy var homeCoordinator: FavoritesBaseCoordinator = FavoritesCoordinator()
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
            let homeViewController = homeCoordinator.start()
            homeCoordinator.parentCoordinator = self
            homeViewController!.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "face.smiling"), tag: 0)
            
            let ordersViewController = toursCoordinator.start()
            toursCoordinator.parentCoordinator = self
            ordersViewController!.tabBarItem = UITabBarItem(title: "Touts", image: UIImage(systemName: "doc.plaintext"), tag: 1)
            
            guard let homeVC = homeViewController, let ordersVC = ordersViewController else { return nil }
            
            (rootViewController as? UITabBarController)?.viewControllers = [homeVC,ordersVC]
        }
        
        setRootViewController(rootViewController)
        
//        self.window.rootViewController = rootViewController
//        self.window.makeKeyAndVisible()
        
        return nil
    }
    
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated else {
            self.window.rootViewController = vc
            self.window.makeKeyAndVisible()
            return
        }

        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window,
                          duration: 0.9,
                          options: .curveEaseInOut,
                          animations: nil,
                          completion: nil)
    }
        
    func moveTo(flow: AppFlow) {
        switch flow {
        case .MostViewed:
            (rootViewController as? UITabBarController)?.selectedIndex = 0
        case .Favorites:
            (rootViewController as? UITabBarController)?.selectedIndex = 1
        }
    }
    
    func handleDeepLink(text: String) {
    }
    
    func resetToRoot() -> Self {
        homeCoordinator.resetToRoot()
        moveTo(flow: .MostViewed)
        return self
    }
    
}
