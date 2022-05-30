//
//  SplashRouter.swift
//
//  Created by yusuf demirkoparan on 6.12.2021.
//

import Foundation

struct SplashRouter {
    
    static func make(_ coordinator: LoginFlowCoordinator) -> SplashVC {
        let viewController = SplashVC.instantiate()
        viewController.coordinator = coordinator
        return viewController
    }
    
}
