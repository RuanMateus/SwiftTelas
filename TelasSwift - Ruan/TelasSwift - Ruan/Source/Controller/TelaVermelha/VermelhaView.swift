//
//  VermelhaView.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

class VermelhaView: UIView {
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            self.backgroundColor = .red
            setupVisualElements()
        }
    
    var onGreenTap: (() -> Void)?
    var onBlueTap: (() -> Void)?
    
    //cria a função com as propriadades do botão registrar
    var buttonTelaVerde = ButtonDefault(botao: "VOLTAR PARA TELA VERDE")
    
    //cria a função com as propriadades da butao no logor
    var buttonTelaAzul = ButtonDefault(botao: "IR PARA TELA AZUL")

    func setupVisualElements() {
        
        self.addSubview(buttonTelaVerde)
        self.addSubview(buttonTelaAzul)
        
        buttonTelaVerde.addTarget(self, action: #selector(GreenTap), for: .touchUpInside)
        buttonTelaAzul.addTarget(self, action: #selector(BlueTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: topAnchor, constant: 400),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVerde.bottomAnchor, constant: 25),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    @objc
    private func BlueTap(){
        onBlueTap?()
    }
    
    @objc
    private func GreenTap(){
        onGreenTap?()
    }
    
}

