//
//  ProfileCoordinator.swift
//  FoodDeliveryApp
//
//  Created by GLABBER on 25.02.2024.
//

import UIKit

class ProfileCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .black
        navigationControllers?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("Appcoordinator finish")
    }
}
