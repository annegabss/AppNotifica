//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 10/11/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    //variavel recebendo a tela de login
    var viewMain = LoginView()
    //override = sobrescriçao de funçao, para chamar a tela LoginView
    override func loadView() {
        self.view = viewMain
    }
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.navigationController?.navigationBar.prefersLargeTitles = true     //titulo grande
        
    }
}
