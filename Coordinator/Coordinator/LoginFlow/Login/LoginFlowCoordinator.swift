//
//  LoginFlow.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import UIKit

enum LoginFlowCoordinatorType {
    case splash
    case login
}

final class LoginFlowCoordinator: Coordinator {
    
    var navigationController: UINavigationController // Parent coordinator
    var loginFlowNavigationController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(with type: LoginFlowCoordinatorType) {
        switch type {
        case .splash:
            let viewController = SplashRouter.make(self)
            navigationController.pushViewController(viewController, animated: true)
        case .login:
            showLogin()
        }
    }
    
    func showLogin() {
        let viewController = LoginVCRouter.make(self)
        loginFlowNavigationController = UINavigationController(rootViewController: viewController)
        loginFlowNavigationController?.modalPresentationStyle = .fullScreen
        self.navigationController.present(loginFlowNavigationController!, animated: false)
    }
    
    func showTestPage() {
        
    }
    
    func finishLoginFlow() {
        let scene = UIApplication.getSceneDelegate()
        UIApplication.getTopViewController()?.dismiss(animated: true, completion: nil)
        scene!.appCoordinator!.start(.HomeFlow)
    }
}
