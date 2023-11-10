//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 10/11/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator{
    
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
}
