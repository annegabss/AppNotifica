//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 10/11/23.
//

import Foundation
import UIKit

/* Classe LoginView é filha da UIView, que é filha da UIKit */
class LoginView: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .blue
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
