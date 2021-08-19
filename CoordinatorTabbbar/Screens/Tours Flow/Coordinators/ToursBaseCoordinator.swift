//
//  ToursBaseCoordinator.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

protocol ToursBaseCoordinator: Coordinator {
    @discardableResult func goToTours2Screen(animated: Bool ) -> Self
    @discardableResult func goToTours3Screen(animated: Bool) -> Self
}

