//
//  ToursCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

class ToursCoordinator: ToursBaseCoordinator {
    
    var parentCoordinator: MainBaseCoordinator?
    
    var rootViewController: UIViewController = UIViewController()
    
    func start() -> UIViewController? {
        
        let vc = ToursViewController.instantiate()
        vc.coordinator = self
        rootViewController = UINavigationController(rootViewController: vc)        
        return rootViewController
    }
    
    func goToTours2Screen(animated: Bool = false) -> Self  {
        navigationRootViewController?.pushViewController(Tours2ViewController(coordinator: self), animated: animated)
        return self
    }
    
    func goToTours3Screen(animated: Bool = false) -> Self {
        navigationRootViewController?.pushViewController(Tours3ViewController(coordinator: self), animated: animated)
        return self
    }
    
    
}
