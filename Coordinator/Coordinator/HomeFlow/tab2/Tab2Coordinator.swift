//
//  tab2Coordinator.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan 
//

import UIKit

final class Tab2Coordinator: Coordinator {
    
    var navigationController: UINavigationController
    var tabNavigationController = UINavigationController()
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() -> UINavigationController {
        let viewController = Tab2Router.make(self)
        viewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "closeMenu"), selectedImage: nil)
        let navCont = UINavigationController(rootViewController: viewController)
        tabNavigationController = navCont
        return tabNavigationController
    }
    
    func presentSomeVC() {
        let vc = PresentVC()
        tabNavigationController.present(vc, animated: true)
    }
}
