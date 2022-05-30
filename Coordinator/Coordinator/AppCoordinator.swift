//
//  MainCoordinator.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import UIKit


final class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var deepLinkType: DeepLinkOption?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

}

extension AppCoordinator {
    func start(_ startType: CoordinatorStartType) {
        switch startType {
        case .Splash:
            showLoginFlow(with: .splash)
        case .LoginFlow:
            showLoginFlow(with: .login)
        case .HomeFlow:
            showHomeFlow()
        }
    }
    
    func start(with option: DeepLinkOption?) {
        switch option {
        case .item(let data): // herhangi bir data
            showHomeFlow()
        case .none:
            showHomeFlow()
        }
    }
}


extension AppCoordinator {
    func showHomeFlow() {
        let homeCoordinator = HomeFlowCoordinator(navigationController)
        homeCoordinator.start()
    }
    
    func showLoginFlow(with type: LoginFlowCoordinatorType) {
        let loginCoordinator = LoginFlowCoordinator(navigationController)
        loginCoordinator.start(with: type)
    }
    
    func showSplash() {
        
    }
    
    func showDeeplink() {
        
    }
    
}
