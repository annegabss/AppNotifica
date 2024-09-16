//
//  ViewHome.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 24/11/23.
//

import Foundation
import UIKit

class HomeView: ViewDefault {
    //MARK: - Closures
    
    //MARK: - Proports
    
    //MARK: - Inits
    
    var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
    
    
    override func setupVisualElements(){
    }
    
}
