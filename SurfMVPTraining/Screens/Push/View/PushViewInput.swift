//
//  PushViewInput.swift
//  SurfMVPTraining
//
//  Created by Виталий Троицкий on 14.09.2023.
//

import Foundation

protocol PushViewInput: AnyObject {
    func setupInitialState(buttonTitle: String)
}
