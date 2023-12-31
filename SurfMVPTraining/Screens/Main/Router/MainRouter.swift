//
//  MainRouter.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import UIKit

final class MainRouter: MainRouterInput {
    
    //MARK: - Proprties
    
    weak var view: ModuleTransitionable?
    
    //MARK: - MainRouterInput
    func showPushModule() {
        let pushViewController = PushModuleConfigurator().configure()
        view?.push(module: pushViewController, animated: true)
    }
    
    func showPresentModule(output: PresentModuleOutput?, isHiddenLabel: Bool) {
        let presentViewController = PresentModuleConfigurator().configure(output: output, isHiddenLabel: isHiddenLabel)
        view?.presentModule(presentViewController, animated: true, completion: nil)
    }
}
