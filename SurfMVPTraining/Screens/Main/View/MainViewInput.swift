//
//  MainViewInput.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import Foundation

protocol MainViewInput: AnyObject {
    /// Настройка исходного состояния
    func setupInitialState(model: MainPresenterModel)
    /// Настройки состояния Лейбла
    func setupLabelState(state: Bool)
}
