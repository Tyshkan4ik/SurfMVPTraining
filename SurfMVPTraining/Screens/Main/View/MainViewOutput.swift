//
//  MainViewOutput.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import Foundation

protocol MainViewOutput {
    func viewDidLoad()
    /// Обрабатываем нажатие кнопки push
    func pushButtonDidTap()
    /// Обрабатываем нажатие кнопки present
    func presentButtonDidTap()
}
