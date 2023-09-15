//
//  PushRouter.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import UIKit

final class PushRouter: PushRouterInput {
    
    //MARK: - Properties
    weak var view: ModuleTransitionable?
    
    //MARK: - PushRouterInput
    func closeModule() {
        view?.pop(animated: true)
    }
}
