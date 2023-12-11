//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 24/11/23.
//

import Foundation
import UIKit
class HomeCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {

        let viewModel = HomeViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        
        //adiciona o nome home na tabbar
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName:"homekit")

        return viewController
    }()
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController

    }
    
    func start () {
        self.navigationController.setViewControllers([homeViewController], animated: false)
    }
    
    func presentNovaOcorrencia(){
        let viewModel = NovaOcorrenciaViewModel(coordinator: self)
        let viewController = NovaOcorrenciaViewController(viewModel: viewModel)
        let navigationNovaOcorrencia = UINavigationController(rootViewController: viewController)
        
        navigationController.present(navigationNovaOcorrencia, animated: true)
        
    }
    //o que vai fazer depois que apertar o botão salvar
    func continueAfterNovaOcorrencia(){
        navigationController.dismiss(animated: true)
        
        homeViewController.refreshData()
    }
    
    
}
