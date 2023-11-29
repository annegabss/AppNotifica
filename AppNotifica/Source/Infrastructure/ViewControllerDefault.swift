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
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
        
        // sumir o botão de voltar em cima
        
        // self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
