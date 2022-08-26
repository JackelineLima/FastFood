//
//  OboardingViewController.swift
//  FastFood
//
//  Created by Jackeline Pires De Lima on 26/08/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol OnboardingViewProtocol: AnyObject {
    func displaySomething()
}

final class OnboardingViewController: UIViewController {
    private lazy var contentView = OnboardingView()
    private let coordinator: OnboardingCoordinatorProtocol

    init(coordinator: OnboardingCoordinatorProtocol) {
      self.coordinator = coordinator
      super.init(nibName: nil, bundle: .main)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}

extension OnboardingViewController: OnboardingViewProtocol {
    func displaySomething() { }
}
