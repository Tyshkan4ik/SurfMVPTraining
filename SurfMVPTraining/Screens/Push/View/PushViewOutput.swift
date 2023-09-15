//
//  PushViewOutput.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import Foundation

protocol PushViewOutput {
    func viewDidLoad()
    /// Обработка нажатия закрытия
    func closeButtonDidTap()
}
