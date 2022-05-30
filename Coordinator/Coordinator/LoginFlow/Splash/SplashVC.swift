//
//  SplashVC.swift
//  IsFaktoring
//
//  Created by yusuf demirkoparan on 6.12.2021.
//

import UIKit

final class SplashVC: UIViewController {
    
    var coordinator: LoginFlowCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Viewmodelden istek gelmiş gibi vs.
     
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.coordinator?.showLogin()
        }
    }
    
    deinit {
        
    }
    
}
extension SplashVC: StoryboardInstantiate {
    static var storyboardType: StoryboardType { return .start }
}
