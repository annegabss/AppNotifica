//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 24/11/23.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    
    //cria uma variável que é do
    
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
        
        return homeView
    }()
    
    override func loadView(){
        self.view = homeView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        
        
    }
    
}

