//
//  HomeViewController.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 10.08.2021.
//

import UIKit

class FavoritesViewController: UIViewController, FavoritesBaseCoordinated, Storyboarded {
    
    var coordinator: FavoritesBaseCoordinator?
    
    var goToFavorites2button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Favorites"

        self.navigationController?.navigationBar.backgroundColor = .white
        self.navigationController?.navigationBar.barTintColor = .white
        self.tabBarController?.tabBar.barTintColor = .yellow
        configureButton()
        
    }
    
    private func configureButton() {
        goToFavorites2button = UIButton()
        view.addSubview(goToFavorites2button)
        goToFavorites2button.translatesAutoresizingMaskIntoConstraints = false
        
        goToFavorites2button.setTitle(" Go to Next Screen ", for: .normal)
        goToFavorites2button.layer.borderColor = UIColor.black.cgColor
        goToFavorites2button.layer.borderWidth = 2
        goToFavorites2button.backgroundColor = .black
        goToFavorites2button.addTarget(self, action: #selector(goToHome2), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            goToFavorites2button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToFavorites2button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @IBAction func goToLogin(_ sender: Any) {
        coordinator?.goToLoginFlow()
    }
    
    @IBAction func goToRecoverPassword(_ sender: Any) {
        coordinator?.goToRecoverPasswordFlow()
    }
    
    @objc private func goToHome2() {
        coordinator?.goToFavorites2ScreenWith(title: "Top Title")
    }
}

