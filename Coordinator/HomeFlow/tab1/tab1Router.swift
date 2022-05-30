//
//  tab1Router.swift
//  IsFaktoring
//
//  Created by yusuf demirkoparan on 7.12.2021.
//

import Foundation

struct Tab1Router {
    
    static func make(_ coordinator: Tab1Coordinator) -> Tab1VC {
        let viewController = Tab1VC.instantiate()
        viewController.coordinator = coordinator
        return viewController
    }
    
}
