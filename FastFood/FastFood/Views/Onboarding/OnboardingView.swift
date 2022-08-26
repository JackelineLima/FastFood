//
//  OboardingView.swift
//  FastFood
//
//  Created by Jackeline Pires De Lima on 26/08/22.
//

import UIKit

final class OnboardingView: UIView, ViewCodable {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        backgroundColor = .red
        buildViewHierarchy()
        setupConstraints()
    }

    func setupAdditionalConfiguration() {
        
    }
    func buildViewHierarchy() {}
    func setupConstraints() {}
}
