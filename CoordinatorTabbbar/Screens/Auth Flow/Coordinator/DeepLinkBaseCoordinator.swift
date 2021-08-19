//
//  DeepLinkCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import Foundation

protocol LoginBaseCoordinator: FlowCoordinator {
    func handleDeeplink(deepLink: String)
}
