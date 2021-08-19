//
//  Tours3ViewController.swift
//  CoordinatorTabbbar
//
//  Created by kaiserdem  on 13.08.2021.
//

import UIKit

class Tours3ViewController: UIViewController, ToursBaseCoordinated {
    
    weak var coordinator: ToursBaseCoordinator?
    
    init(coordinator: ToursBaseCoordinator) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Tours 3"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
    }
}
