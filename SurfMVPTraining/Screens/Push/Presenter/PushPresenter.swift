//
//  PushPresenter.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import Foundation

final class PushPresenter: PushViewOutput, PushModuleInput {
    
    //MARK: - Constants
    private enum Constants {
        static let buttonTitle = "Close"
    }
    
    //MARK: - Properties
    weak var view: PushViewInput?
    var router: PushRouterInput?
    var output: PushModuleOutput?
    
    //MARK: - PushViewOutput
    func viewDidLoad() {
        view?.setupInitialState(buttonTitle: Constants.buttonTitle)
    }
    
    func closeButtonDidTap() {
        router?.closeModule()
    }
}
