//
//  LoginVCRouter.swift
//
//  Created by yusuf demirkoparan on 6.12.2021.
//

import Foundation


struct LoginVCRouter {
    
    static func make(_ coordinator: LoginFlowCoordinator) -> LoginVC {
        let viewController = LoginVC.instantiate()
        let viewModel = LoginVM()
        viewController.viewModel = viewModel
        viewController.coordinator = coordinator
        return viewController
    }
    
}
