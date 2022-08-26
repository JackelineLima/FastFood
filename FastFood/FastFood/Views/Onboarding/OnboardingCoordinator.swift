//
//  OboardingCoordinator.swift
//  FastFood
//
//  Created by Jackeline Pires De Lima on 26/08/22.
//

import UIKit

protocol OnboardingCoordinatorProtocol: AnyObject {
    func start()
}

final class OnboardingCoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

extension OnboardingCoordinator: OnboardingCoordinatorProtocol {
    
    func start() {
        let controller = OnboardingViewController(coordinator: self)
        navigationController.pushViewController(controller, animated: true)
    }
}
