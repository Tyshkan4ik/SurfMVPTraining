//
//  MainViewController.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import UIKit

class MainViewController: UIViewController, MainViewInput, ModuleTransitionable {
    
    //MARK: - Properties
    var output: MainViewOutput?
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var pushButton: UIButton = {
       let button = UIButton()
        button.addTarget(self, action: #selector(pushButtonDidTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var presentButton: UIButton = {
       let button = UIButton()
        button.addTarget(self, action: #selector(presentButtonDidTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
        view.backgroundColor = .systemYellow
        setupElements()
        setupConstraints()
    }
    
    //MARK: - MainViewInput
    
    func setupInitialState(model: MainPresenterModel) {
        configureAppearance(model: model)
    }
    
    func setupLabelState(state: Bool) {
        titleLabel.isHidden = state
    }
    
    //MARK: - Private Methods
    
    private func setupElements() {
        view.addSubview(titleLabel)
        view.addSubview(pushButton)
        view.addSubview(presentButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            pushButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            pushButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            pushButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2.5),
            pushButton.heightAnchor.constraint(equalToConstant: 200),
            
            presentButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            presentButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            presentButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2.5),
            presentButton.heightAnchor.constraint(equalToConstant: 200),
        ])
    }
}

//MARK: - Extension - Private Methods Configure

private extension MainViewController {
    /// Настройка внешнего вида
    func configureAppearance(model: MainPresenterModel) {
        configureNavigationController(with: model.title)
        configureLabel(with: model.titleLabel)
        configureButtons(with: model)
    }
    
    /// Настройка NavigationController
    func configureNavigationController(with navigationBarTitle: String) {
        title = navigationBarTitle
    }
    
    /// Настройка Label
    func configureLabel(with title: String) {
        titleLabel.text = title
    }
    
    /// Настройка кнопок
    func configureButtons(with model: MainPresenterModel) {
        pushButton.setTitle(model.pushButtonTitle, for: [])
        pushButton.backgroundColor = .blue
        
        presentButton.setTitle(model.presentButtonTitle, for: [])
        presentButton.backgroundColor = .red
        
        [pushButton, presentButton].forEach {
            $0.tintColor = .white
            $0.layer.cornerRadius = 8
        }
    }
}

//MARK: - Extension - Actions

@objc private extension MainViewController {
    
    func pushButtonDidTap() {
        output?.pushButtonDidTap()
    }
    
    func presentButtonDidTap() {
        output?.presentButtonDidTap()
    }
}
