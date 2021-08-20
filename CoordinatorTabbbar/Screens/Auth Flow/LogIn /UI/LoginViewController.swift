//
//  LoginViewController.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

class LoginViewController: UIViewController, LoginBaseCoordinated, Storyboarded {
    
    var coordinator: LoginBaseCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
    }
    
    @IBAction func didTapLogin(_ sender: UIButton) {
        coordinator?.goToFavoritesFlow()
    }
    @IBAction func didTapRecoverPassword(_ sender: UIButton) {
        coordinator?.goToRecoverPassword()
    }
}
