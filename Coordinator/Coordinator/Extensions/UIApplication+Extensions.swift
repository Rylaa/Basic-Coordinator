//
//  UIApplication+Extensions.swift
//  IsFaktoring
//
//  Created by yusuf demirkoparan on 6.12.2021.
//

import Foundation
import UIKit

extension UIApplication {
    
    static func getSceneDelegate() -> SceneDelegate? {
        for scene in UIApplication.shared.connectedScenes {
            if let delegate = scene.delegate as? SceneDelegate {
                return delegate
            }
        }
        return nil
    }
    
    static func getUIScene() -> UIScene? {
        for scene in UIApplication.shared.connectedScenes {
            return scene
        }
        return nil
    }
    
    static func getUIWindowsScene() -> UIWindowScene? {
        for scene in UIApplication.shared.connectedScenes {
            if let currentScene = scene as? UIWindowScene {
                return currentScene
            }
        }
        return nil
    }
    
    static func appStart(_ scene: UIScene? = nil, screen: UINavigationController) {
        if let windowsScene = (scene as? UIWindowScene) ?? getUIWindowsScene() {
            let window = UIWindow(windowScene: windowsScene)
            window.rootViewController = screen
            getSceneDelegate()?.window = window
            window.makeKeyAndVisible()
        }
    }
    
    static func getTopViewController() -> UIViewController? {
        if #available(iOS 13, *){
            let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            
            if var topController = keyWindow?.rootViewController {
                while let presentedViewController = topController.presentedViewController {
                    topController = presentedViewController
                }
                return topController
            }
        } else {
            if var topController = UIApplication.shared.keyWindow?.rootViewController {
                while let presentedViewController = topController.presentedViewController {
                    topController = presentedViewController
                }
                return topController
            }
        }
        return nil
    }
        
}
