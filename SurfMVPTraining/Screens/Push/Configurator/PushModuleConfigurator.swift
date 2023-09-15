//
//  PushModuleConfigurator.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import UIKit

final class PushModuleConfigurator {
    
    //MARK: - Internal methods
    func configure(output: PushModuleOutput? = nil) -> UIViewController {
        let view = PushViewController()
        let presenter = PushPresenter()
        let router = PushRouter()
        
        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter
        
        return view
    }
}
