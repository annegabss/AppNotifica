//
//  EscolherIamgem.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 04/12/23.
//

import Foundation
import UIKit

class EscolherImagem: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //instancia o controle do sistema de imagens
    var selecionador = UIImagePickerController()
    
    //cria um alerta
    var alerta = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    
    //Cria um callback @escaping
    var retornoSelecionador: ((UIImage)-> ())?
    
    //Função principal
    func selecionadorImagem(_ viewController:UIViewController, _ retorno: @escaping ((UIImage)-> ())) {
        /* Declara o callback dessa função como sendo a variavel externa pickImaageCallback, isso serve para o retorno dessa função estar em outro método, no caso, após a escolha da imagem */
        retornoSelecionador = retorno 
        
        //Declara o viewController como o passado como parâmetro, isso serve para as transições de tela
        self.viewController = viewController
        
        //Cria uma ação em que chama o método "openCamera"
        let camera = UIAlertAction(title: "Camera", style: .default){
            UIAlertAction in
            self.abrirCamera()
        }
            
        //Cria uma ação em que chama o método "abrirGaleria"
            let camera = UIAlertAction(title: "Galeria", style: .default){
                UIAlertAction in
                self.abrirGaleria()
        }
        //Cria uma outra ação
            let cancelar = UIAlertAction(title: "Cancelar", style: .default){
                UIAlertAction in
                self.abrirGaleria()
        }
        
        //Declara que o novo delegate do piker são os métodos abaixo
        selecionador.delegate = self
        
        //Adiciona ações de alerta
        alerta.addAction(camera)
        alerta.addAction(galeria)
        alerta.addAction(cancelar)
        
        //Exibe o alerta na tela
        alerta.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alerta, animated: true, completion: nil)
    }
}
