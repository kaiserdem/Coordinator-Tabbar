//
//  HomeCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 10.08.2021.
//

import UIKit

class FavoritesCoordinator: FavoritesBaseCoordinator {

    var parentCoordinator: MainBaseCoordinator?
    
    lazy var rootViewController: UIViewController = UIViewController()
    
    func start() -> UIViewController? {
        let vc = FavoritesViewController.instantiate()
        vc.coordinator = self
        rootViewController = UINavigationController(rootViewController: vc)
        return rootViewController
    }
    
    func goToFavorites2ScreenWith(title: String) {
        let favorites2ViewController = Favorites2ViewController(coordinator: self)
        favorites2ViewController.title = title
        navigationRootViewController?.pushViewController(favorites2ViewController, animated: true)
    }
    
    func goToFavoritesFlow() {
        parentCoordinator?.moveTo(flow: .Favorites)
    }
    
    func goToDeepViewInFavoriteTab() {
        parentCoordinator?.moveTo(flow: .Favorites)
        DispatchQueue.main.asyncAfter(deadline: .now()+0.1) { [weak self] in
            self?.parentCoordinator?.toursCoordinator
                .resetToRoot()
                .goToTours2Screen(animated: true)
                .goToTours3Screen(animated: true)
        }
    }
    
    func goToLoginFlow() {
        let window : UIWindow = UIApplication.shared.keyWindow!
        let mainCoordinator = MainCoordinator(window)
        mainCoordinator.startFlowType = .LoginFlow
       mainCoordinator.start()
    }
    
    
    func resetToRoot() -> Self {
        navigationRootViewController?.popToRootViewController(animated: false)
        return self
    }
}
