//
//  Tab2Router.swift
//  IsFaktoring
//
//  Created by yusuf demirkoparan on 7.12.2021.
//

import Foundation
struct Tab2Router {
    
    static func make(_ coordinator: Tab2Coordinator) -> Tab2VC {
        let viewController = Tab2VC.instantiate()
        viewController.coordinator = coordinator
        return viewController
    }

}
