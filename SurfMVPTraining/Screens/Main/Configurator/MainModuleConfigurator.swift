//
//  MainModuleConfigurator.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import UIKit

final class MainModuleConfigurator {
    
    //MARK: - Internal methods
    
    func configure(output: MainModuleOutput? = nil) -> UIViewController {
        let view = MainViewController()
        let presenter = MainPresenter()
        let router = MainRouter()
        
        presenter.view = view
        presenter.router = router
        presenter.output = output
        //router.view = view
        view.output = presenter
        
        return view
    }
    
}
