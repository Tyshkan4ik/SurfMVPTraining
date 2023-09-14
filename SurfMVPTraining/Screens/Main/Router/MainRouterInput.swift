//
//  MainRouterInput.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import Foundation

protocol MainRouterInput {
    func showPushModule()
    func showPresentModule(isHiddenLabel: Bool)
    //func showPresentModule(output: PresentModuleoutput?, isHiddenLabel: Bool)
}
