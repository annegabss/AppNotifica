//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 29/11/23.
//

import Foundation
import UIKit
class NovaOcorrenciaView: ViewDefault {
    //MARK: Closures
    
    var onCameraTap:(()->Void)?
    
    lazy var imagem: UIImageView = {
        let view = UIImageView ()
        view.image = UIImage(named:"imagemCamera")
        
        
        //função que pode ser acionada pelo closure la em cima
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
        
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    lazy var titleTextField = TextFieldDefault(placeholder: "Título", keyBordType: .default, returnKeyType: .next)
    lazy var descriptionTextField = TextFieldDefault(placeholder: "Descrição", keyBordType: .default, returnKeyType: .next)
    lazy var locTextField = TextFieldDefault(placeholder: "Localização", keyBordType: .default, returnKeyType: .next)
    lazy var statusTextField = TextFieldDefault(placeholder: "Status", keyBordType: .default, returnKeyType: .done)
    lazy var saveButton = ButtonDefault(botao: "SALVAR")
    
    override func setupVisualElements() {
        self.addSubview(imagem)
        self.addSubview(titleTextField)
        self.addSubview(descriptionTextField)
        self.addSubview(locTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)


        
        NSLayoutConstraint.activate([
            imagem.heightAnchor.constraint(equalToConstant: 200),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            titleTextField.widthAnchor.constraint(equalToConstant: 374),
            titleTextField.heightAnchor.constraint(equalToConstant: 60),
            titleTextField.topAnchor.constraint(equalTo: imagem.bottomAnchor, constant: 20),
            titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            descriptionTextField.widthAnchor.constraint(equalToConstant: 374),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 60),
            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            locTextField.widthAnchor.constraint(equalToConstant: 374),
            locTextField.heightAnchor.constraint(equalToConstant: 60),
            locTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 20),
            locTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            locTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: locTextField.bottomAnchor, constant: 20),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            saveButton.widthAnchor.constraint(equalToConstant: 374),
            saveButton.heightAnchor.constraint(equalToConstant: 60),
            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                                    
        
        
        
        ])
        
    }
    
    @objc
    
    private func cameraTap(){
        self.onCameraTap?()
        
    }
}
