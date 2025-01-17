//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 10/11/23.
//

import Foundation
import UIKit
class LoginCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
     //chama a login
     let viewController = LoginViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onRegisterTap = {
              self.gotoRegister()
          }
          
          viewController.onLoginTap = {
              self.gotoLogin()
          }
    }
    
    //função que chama a registerView
    func  gotoRegister() {
       let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func  gotoLogin() {
       let coordinator = TabBarCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
