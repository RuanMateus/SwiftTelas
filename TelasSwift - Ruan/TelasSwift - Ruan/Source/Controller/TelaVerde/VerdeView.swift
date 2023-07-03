//
//  VerdeView.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

class VerdeView: UIView {
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            self.backgroundColor = .green
            setupVisualElements()
        }
    
    //MARK: - Initialize
    var onRedTap: (() -> Void)?
    var onBlueTap: (() -> Void)?
    
    //cria a função com as propriadades do botão registrar
    var buttonTelaAzul = ButtonDefault(botao: "IR PARA TELA AZUL")
    
    //cria a função com as propriadades da butao no logor
    var buttonTelaVermelha = ButtonDefault(botao: "IR PARA TELA VERMELHA")

    func setupVisualElements() {
        
        self.addSubview(buttonTelaAzul)
        self.addSubview(buttonTelaVermelha)
        
        buttonTelaAzul.addTarget(self, action: #selector(BlueTap), for: .touchUpInside)
        
        buttonTelaVermelha.addTarget(self, action: #selector(RedTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: topAnchor, constant: 400),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonTelaVermelha.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVermelha.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVermelha.topAnchor.constraint(equalTo: buttonTelaAzul.bottomAnchor, constant: 25),
            buttonTelaVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

    
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
    private func RedTap(){
        onRedTap?()
    }
    
}
