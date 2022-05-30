//
//  Tab2Coordinator.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import UIKit


final class Tab1Coordinator: Coordinator {
    var navigationController: UINavigationController
    var tabNavigationController = UINavigationController()
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() -> UINavigationController {
        let viewController = Tab1Router.make(self)
        viewController.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(named: "closeMenu"), selectedImage: nil)
        let navCont = UINavigationController(rootViewController: viewController)
        tabNavigationController = navCont
        return tabNavigationController
    }
    
    func finishFlow() {
        navigationController.dismiss(animated: true)
    }
    
    deinit {
        
    }
    
}
