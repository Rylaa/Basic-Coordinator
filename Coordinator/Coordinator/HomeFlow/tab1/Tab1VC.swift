//
//  ViewController.swift
//  Coordinator-Example
//
//  Created by Yusuf Demirkoparan
//

import UIKit

class Tab1VC: UIViewController {

    var coordinator: Tab1Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .blue
        navigationItem.title = "XXX"
       
    }

    @IBAction func finish(_ sender: Any) {
        self.coordinator?.finishFlow()
    }
    
}


extension Tab1VC: StoryboardInstantiate {
    static var storyboardType: StoryboardType { return .start }
}
