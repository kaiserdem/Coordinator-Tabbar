//
//  ToursViewController.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

class ToursViewController: UIViewController, ToursBaseCoordinated, Storyboarded {
    
    weak var coordinator: ToursBaseCoordinator?
    var goToOrders2button: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tours"
        view.backgroundColor = .gray
        
        configureButton()
    }
    
    private func configureButton() {
        goToOrders2button = UIButton()
        view.addSubview(goToOrders2button)
        goToOrders2button.translatesAutoresizingMaskIntoConstraints = false
        
        goToOrders2button.setTitle(" Go to Tours 2 ", for: .normal)
        goToOrders2button.layer.borderColor = UIColor.black.cgColor
        goToOrders2button.layer.borderWidth = 2
        goToOrders2button.backgroundColor = .black
        goToOrders2button.addTarget(self, action: #selector(goToHome2), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            goToOrders2button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToOrders2button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func goToHome2() {
        coordinator?.goToTours2Screen(animated: true)
    }
}

