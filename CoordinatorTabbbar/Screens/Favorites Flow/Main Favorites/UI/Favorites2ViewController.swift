//
//  Home2ViewController.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 10.08.2021.
//

import UIKit

class Favorites2ViewController: UIViewController, FavoritesBaseCoordinated {
    var coordinator: FavoritesBaseCoordinator?
    
    var goToFavoriteButton: UIButton!
    var goToFavoriteDeepViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        title = "Favorites 2"

        configureButtonGoToFavorite()
        configureGoToFavoriteDeepViewButton()
    }
    
    private func configureButtonGoToFavorite() {
        goToFavoriteButton = UIButton()
        view.addSubview(goToFavoriteButton)
        goToFavoriteButton.translatesAutoresizingMaskIntoConstraints = false
        
        goToFavoriteButton.setTitle(" Go to Tours ", for: .normal)
        goToFavoriteButton.layer.borderColor = UIColor.black.cgColor
        goToFavoriteButton.layer.borderWidth = 2
        goToFavoriteButton.backgroundColor = .black
        goToFavoriteButton.addTarget(self, action: #selector(didTapTours), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            goToFavoriteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToFavoriteButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func configureGoToFavoriteDeepViewButton() {
        goToFavoriteDeepViewButton = UIButton()
        view.addSubview(goToFavoriteDeepViewButton)
        goToFavoriteDeepViewButton.translatesAutoresizingMaskIntoConstraints = false
        
        goToFavoriteDeepViewButton.setTitle(" Go to Tours 3 ", for: .normal)
        goToFavoriteDeepViewButton.layer.borderColor = UIColor.black.cgColor
        goToFavoriteDeepViewButton.layer.borderWidth = 2
        goToFavoriteDeepViewButton.backgroundColor = .red
        goToFavoriteDeepViewButton.addTarget(self, action: #selector(didTapTours3), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            goToFavoriteDeepViewButton.topAnchor.constraint(equalTo: goToFavoriteButton.bottomAnchor, constant: 20),
            goToFavoriteDeepViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc private func didTapTours() {
        coordinator?.goToTours()
    }
    
    @objc private func didTapTours3() {
        coordinator?.goToTours3()
    }
}
