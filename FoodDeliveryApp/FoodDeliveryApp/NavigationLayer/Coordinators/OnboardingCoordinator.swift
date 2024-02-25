//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by GLABBER on 24.02.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        navigationControllers?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("Appcoordinator finish")
    }
}

