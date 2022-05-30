//
//  Coordinator.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func start(_ startType: CoordinatorStartType)
    func start(with option: DeepLinkOption?)
   
}

enum CoordinatorStartType {
    case Splash
    case LoginFlow
    case HomeFlow
}

extension Coordinator {
    func start(with option: DeepLinkOption?) {
        start(with: option)
    }
    
    func start(_ startType: CoordinatorStartType) {
        start(startType)
    }
}
