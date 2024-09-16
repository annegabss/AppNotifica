//
//  ViewControllerDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 29/11/23.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //faz com que o título da superior ficar maior
        self.navigationController?.navigationBar.prefersLargeTitles=true
        
        // sumir o botão de voltar em cima
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        
        // faz com que o teclado desaparece clicando em qualquer lugar da tela
        let tap: UITapGestureRecognizer = UITapGestureRecognizer (target: self, action: #selector (self.hideKeyBoardByTappinoutSide))
        
        self.view.addGestureRecognizer(tap)
    }
    
    @objc
    
    func hideKeyBoardByTappinoutSide () {
        self.view.endEditing(true)
    }
}
