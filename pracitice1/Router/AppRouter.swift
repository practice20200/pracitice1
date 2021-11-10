//
//  AppRouter.swift
//  TravelApp
//
//  Created by Apple New on 2021-10-31.
//

import UIKit

class AppRouter{
    
    static func navigate(to vc: UIViewController){
        
        if let scenceDeligate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
            let nc = UINavigationController(rootViewController:vc)
            scenceDeligate.window?.rootViewController = nc
        }
        
    }
    
}
