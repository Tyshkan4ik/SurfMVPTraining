//
//  PresentModuleConfigurator.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 15.09.2023.
//

import UIKit

final class PresentModuleConfigurator {
    
    //MARK: - Internal methods
    
    func configure(output: PresentModuleOutput? = nil, isHiddenLabel: Bool) -> UIViewController {
        let view = PresentViewController()
        let presenter = PresentPresenter(isHiddenLabel: isHiddenLabel)
        let router = PresentRouter()
        
        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter
        
        return view
    }
}
