//
//  LoginVC.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import UIKit

final class LoginVC: UIViewController {

    @IBOutlet private weak var startHomwFlow: UIButton!
    
    var viewModel: LoginVM!
    weak var coordinator: LoginFlowCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func show(_ sender: Any) {
        self.coordinator?.finishLoginFlow()
    }
}
extension LoginVC: StoryboardInstantiate {
    static var storyboardType: StoryboardType { return .start }
}
