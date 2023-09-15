//
//  PushViewController.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import UIKit

final class PushViewController: UIViewController, PushViewInput, ModuleTransitionable {
    
    //MARK: - Properties
    var output: PushViewOutput?
    
    private lazy var closeButton: UIButton = {
       let button = UIButton()
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
        view.backgroundColor = .systemMint
        setupElements()
        setupConstraints()
    }
    
    //MARK: - PushViewInput
    func setupInitialState(buttonTitle: String) {
        configureAppearance(with: buttonTitle)
    }
    
    //MARK: - Private Methods
    private func setupElements() {
        view.addSubview(closeButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            closeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

//MARK: - Configure methods
private extension PushViewController {
    
    func configureAppearance(with buttonTitle: String) {
        configureButton(with: buttonTitle)
    }
    
    func configureButton(with title: String) {
        closeButton.setTitle(title, for: [])
        closeButton.tintColor = .blue
    }
}

//MARK: - Actions

@objc private extension PushViewController {
    
    func buttonDidTap() {
        output?.closeButtonDidTap()
    }
}
