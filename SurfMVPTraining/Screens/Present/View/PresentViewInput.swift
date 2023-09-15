//
//  PresentViewInput.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 15.09.2023.
//

import Foundation

protocol PresentViewInput: AnyObject {
    func setupInitialState()
    func changeButtonTitle(text: String)
}
