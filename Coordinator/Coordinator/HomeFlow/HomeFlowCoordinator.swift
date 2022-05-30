//
//  HomeFlowCoordinator.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import UIKit

final class HomeFlowCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var tabbarController = UITabBarController()
 
    init(_ navigationController: UINavigationController) {
        defer {
            tabbarController = getTabbar()
        }
        self.navigationController = navigationController
    }
    
    func start() {
        let tabbarNavigationController = UINavigationController(rootViewController: tabbarController)
        tabbarNavigationController.modalPresentationStyle = .fullScreen
        tabbarNavigationController.setNavigationBarHidden(true, animated: false)
        navigationController.present(tabbarNavigationController, animated: true, completion: nil)
    }
    
    private func getTabbar() -> UITabBarController {
        let tabbarController = UITabBarController()
        tabbarController.tabBar.tintColor = .green
        tabbarController.tabBar.unselectedItemTintColor = .blue
        tabbarController.tabBar.isTranslucent = false
        let tab1Coordinator = Tab1Coordinator(navigationController)
        let tab2Coordinator = Tab2Coordinator(navigationController)
        tabbarController.viewControllers = [ tab1Coordinator.start(),
                                             tab2Coordinator.start()]
        return tabbarController
    }
}
