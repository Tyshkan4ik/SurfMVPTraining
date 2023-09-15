//
//  PresentPresenter.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 15.09.2023.
//

import Foundation

final class PresentPresenter: PresentViewOutput, PresentModuleInput {
    
    //MARK: - Constants
    private enum Constants {
        static let hideLabelTitle = "Скрыть лейбл на предыдущем экране"
        static let showLabelTitle = "Показать лейбл на предыдущем экране"
    }
    
    //MARK: - Properties
    weak var view: PresentViewInput?
    var router: PresentRouterInput?
    var output: PresentModuleOutput?
    
    //MARK: - Private Properties
    private var isHiddenLabel: Bool
    
    //MARK: - Initialization
    init(isHiddenLabel: Bool) {
        self.isHiddenLabel = isHiddenLabel
    }
    
    //MARK: - PresentViewOutput
    func viewDidLoad() {
        view?.setupInitialState()
        editButtonTitle()
    }
    
    func changeButtonDidTap() {
        isHiddenLabel.toggle()
        editButtonTitle()
        /// При нажатии передаем Делегату, что изменилось состояние
        /// В нашем случае делегатом является MainPresenter
        output?.changeLabelState()
    }
}

//MARK: - Extension - Private Methods

private extension PresentPresenter {
    
    func editButtonTitle() {
        view?.changeButtonTitle(text: isHiddenLabel ? Constants.showLabelTitle : Constants.hideLabelTitle)
    }
}
