//
//  NovaOcorrenciaViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 29/11/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres

    let viewModel: NovaOcorrenciaViewModel
    
    init(viewModel: NovaOcorrenciaViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //cria uma variável que é do
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView(viewModel: viewModel)

        novaOcorrenciaView.onCameraTap = {
            EscolherImagem().selecionadorImagem(self){ imagem in novaOcorrenciaView.setImage(image: imagem)
            }
        }
        
        
        return novaOcorrenciaView
    }()
    
    override func loadView(){
        self.view = novaOcorrenciaView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
        
        
    }
    
}
