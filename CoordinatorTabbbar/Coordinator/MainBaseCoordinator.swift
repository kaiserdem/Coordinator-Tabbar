//
//  MainBaseCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import Foundation

protocol MainBaseCoordinator: Coordinator {
    var homeCoordinator: FavoritesBaseCoordinator { get }
    var toursCoordinator: ToursBaseCoordinator { get }
    var loginCoordinator: LoginBaseCoordinator { get }

    func moveTo(flow: AppFlow)
}

protocol FavoritesBaseCoordinated {
    var coordinator: FavoritesBaseCoordinator? { get }
}

protocol ToursBaseCoordinated {
    var coordinator: ToursBaseCoordinator? { get }

}

protocol LoginBaseCoordinated {
    var coordinator: LoginBaseCoordinator? { get }
}
