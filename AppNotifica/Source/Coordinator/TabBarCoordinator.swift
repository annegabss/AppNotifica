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
        
// inicializa o TabbarController
        let tabbarController = TabBarController()
        tabbarController.modalPresentationStyle = .overFullScreen
        
        let homeNavigation = UINavigationController()
        //inicializar as views de tabbar homeViewController
        let homeViewCoordinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoordinator.start()
        
        
        let sobreNavigation = UINavigationController()
        let sobreViewCoordinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoordinator.start()
        
        let navigationControllers = [homeNavigation, sobreNavigation]
        
        //passa uma lista de view que serão mostradas na tabbar
        tabbarController.setViewControllers(navigationControllers, animated: true)
        
        self.navigationController.present(tabbarController, animated: true)
    }
}
