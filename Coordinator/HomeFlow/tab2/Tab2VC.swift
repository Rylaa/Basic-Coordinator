//
//  Test1VC.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import UIKit


final class Tab2VC: UIViewController {
    
    var coordinator: Tab2Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func show(_ sender: Any) {
        coordinator?.presentSomeVC()
    }
    
}

extension Tab2VC: StoryboardInstantiate {
    static var storyboardType: StoryboardType { return .start }
}
