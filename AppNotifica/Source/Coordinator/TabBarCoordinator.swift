//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 29/11/23.
//

import Foundation
import UIKit
class TabBarCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
    }
        

    func start () {
        let tabbarController = TabBarController()
        let homeViewCoorinator = HomeCoordinator(navigationController: self.navigationController)
        let novaOcorrenciaViewCoorinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        let sobreViewCoorinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabbarController.setViewControllers([homeViewCoorinator.homeViewController, novaOcorrenciaViewCoorinator.novaOcorrenciaViewController, sobreViewCoorinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabbarController, animated: true)
    }
}
