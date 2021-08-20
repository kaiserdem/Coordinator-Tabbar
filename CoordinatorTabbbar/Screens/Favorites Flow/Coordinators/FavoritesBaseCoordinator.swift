//
//  HomeBaseCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 10.08.2021.
//

import UIKit


protocol FavoritesBaseCoordinator: Coordinator {
    func goToFavorites2ScreenWith(title: String)
    func goToTours()
    func goToTours3()
    func goToLoginFlow()
    func goToRecoverPasswordFlow()
}
