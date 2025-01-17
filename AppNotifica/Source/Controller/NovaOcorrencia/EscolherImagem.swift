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
    
    //Cria um UIViewController
    var viewController: UIViewController?

    //Cria um callback @escaping
    var retornoSelecionador: ((UIImage)-> ())?
    
    //Função principal
    func selecionadorImagem(_ viewController: UIViewController, _ retorno: @escaping ((UIImage)-> ())) {
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
            let galeria = UIAlertAction(title: "Galeria", style: .default){
                UIAlertAction in
                self.abrirGaleria()
        }
        //Cria uma outra ação
            let cancelar = UIAlertAction(title: "Cancelar", style: .default){
                UIAlertAction in
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
    
    //Abre a câmera
    func abrirCamera(){
        //Desfaz o alerta de seleção gerado anteriormente
        alerta.dismiss(animated: true, completion: nil)
        
        //Aqui verificamos se temos a permissão para acessar a câmera
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            //Define o tipo que queremos selecionar como a câmera
            selecionador.sourceType = .camera
            //Vai para a tela da câmera
            self.viewController?.present(selecionador, animated: true, completion: nil)
        } else {
            //Gera alerta se a pessoa não possue câmera no dispositivo ou caso você rode em um simulador.
            let alerta = UIAlertController(title: "Alerta", message: "Você não tem câmera", preferredStyle: .actionSheet)
            //Cria uma outra ação
            let cancelar = UIAlertAction(title: "Cancelar", style: .cancel){
                UIAlertAction in
            }
            //Mostra alerta
            alerta.addAction(cancelar)
            self.viewController?.present(alerta, animated: true, completion: nil)
        }
    }
    
    //Abre a Galeria
    func abrirGaleria(){
        //Desfaz o alerta gerado
        alerta.dismiss(animated: true, completion: nil)
        
        //Por default o tipo de abertura do seleionador em cena é a galeria
        selecionador.sourceType = .photoLibrary
        
        //Vai para a tela da Galeria
        self.viewController?.present(selecionador, animated: true, completion: nil)
    }
    
    //Metodo chamado quando a pessoa escolhe uma imagem
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        //Desfaz a tela da Galeria que foi gerado
        picker.dismiss(animated: true, completion: nil)
        
        //Verifica o arquivo aberto é realmente uma imagem
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Esperava-se uma imagem, mas foi dado o seguinte: \(info)")
        }
        //Retorno o callback da função principal
        retornoSelecionador?(image)
    }
}
