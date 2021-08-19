//
//  HomeBaseCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 10.08.2021.
//

import UIKit


protocol FavoritesBaseCoordinator: Coordinator {
    func goToFavorites2ScreenWith(title: String)
    func goToFavoritesFlow()
    func goToDeepViewInFavoriteTab()
    func goToLoginFlow()
}
