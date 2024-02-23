//
//  Coordinator.swift
//  FoodDeliveryApp
//
//  Created by GLABBER on 23.02.2024.
//

import UIKit

enum CoordinatorType {
    case app
    case onboarding
    case home
    case ordeer
    case list
    case frofile
}

protocol CoordinatorProtocol: AnyObject {
    
    var childCoordinators: [CoordinatorProtocol] { get set }
    var type: CoordinatorType { get }
    var navigationControllers: UINavigationController? { get set }
    var finishDelegate: CoordinatorFinishDelegate? { get set }
    
    func start()
    func finish()
}

extension CoordinatorProtocol {
    func addChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators.append(childCoordinator)
    }
    func removeChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators = childCoordinators.filter{ $0 !== childCoordinator }
    }
}

protocol CoordinatorFinishDelegate: AnyObject {
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol)
}




