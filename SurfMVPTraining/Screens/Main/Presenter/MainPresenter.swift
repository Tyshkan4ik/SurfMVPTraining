//
//  MainPresenter.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import Foundation

final class MainPresenter: MainViewOutput, MainModuleInput {
    
    //MARK: - Properties
    
    weak var view: MainViewInput?
    var router: MainRouterInput?
    var output: MainModuleOutput?
    
    //MARK: - Private Properties
    
    private var isHiddenLabel: Bool = false
    
    //MARK: - MainViewOutput
    
    func viewDidLoad() {
        view?.setupInitialState(model: MainPresenterModel())
    }
    
    func pushButtonDidTap() {
        router?.showPushModule()
    }
    
    func presentButtonDidTap() {
        router?.showPresentModule(isHiddenLabel: isHiddenLabel)
    }
}
