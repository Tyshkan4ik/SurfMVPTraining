//
//  PresentViewController.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 15.09.2023.
//

import UIKit

final class PresentViewController: UIViewController, PresentViewInput, ModuleTransitionable {
    
    //MARK: - Private Properties
    private lazy var changeLabelStateButton: UIButton = {
       let button = UIButton()
        button.addTarget(self, action: #selector(changeLabelStateButtonDidTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Properties
    var output: PresentViewOutput?
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
        view.backgroundColor = .systemTeal
        setupElements()
        setupConstraints()
    }
    
    //MARK: - PresentViewInput
    func setupInitialState() {
        configureAppearence()
    }
    
    func changeButtonTitle(text: String) {
        changeLabelStateButton.setTitle(text, for: [])
    }
    
    //MARK: - Private Methods
    
    private func setupElements() {
        view.addSubview(changeLabelStateButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            changeLabelStateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeLabelStateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

//MARK: - Extension - Configure Methods
private extension PresentViewController {
    
    func configureAppearence() {
        configureButton()
    }
    
    func configureButton() {
        changeLabelStateButton.tintColor = .blue
        changeLabelStateButton.titleLabel?.numberOfLines = 0
    }
}

//MARK: - Extension - Actions

@objc private extension PresentViewController {
    
    func changeLabelStateButtonDidTap() {
        output?.changeButtonDidTap()
    }
}
