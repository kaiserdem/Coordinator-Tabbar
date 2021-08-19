//
//  Tours2ViewController.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

class Tours2ViewController: UIViewController, ToursBaseCoordinated {
    
    weak var coordinator: ToursBaseCoordinator?
    var goToOrders3button: UIButton!
    
    init(coordinator: ToursBaseCoordinator) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Tours 2"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        configureButton()
    }
    
    private func configureButton() {
        goToOrders3button = UIButton()
        view.addSubview(goToOrders3button)
        goToOrders3button.translatesAutoresizingMaskIntoConstraints = false
        
        goToOrders3button.setTitle(" Go to Tours 3 ", for: .normal)
        goToOrders3button.layer.borderColor = UIColor.black.cgColor
        goToOrders3button.layer.borderWidth = 2
        goToOrders3button.backgroundColor = .black
        goToOrders3button.addTarget(self, action: #selector(goToOrders3Screen), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            goToOrders3button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToOrders3button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func goToOrders3Screen() {
        coordinator?.goToTours3Screen(animated: true)
    }
}
