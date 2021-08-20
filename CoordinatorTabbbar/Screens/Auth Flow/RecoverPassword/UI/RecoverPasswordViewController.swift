//
//  RecoverPasswordViewController.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 20.08.2021.
//

import UIKit

class RecoverPasswordViewController: UIViewController, LoginBaseCoordinated, Storyboarded {

    var coordinator: LoginBaseCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recover Password"
    }
   
}
