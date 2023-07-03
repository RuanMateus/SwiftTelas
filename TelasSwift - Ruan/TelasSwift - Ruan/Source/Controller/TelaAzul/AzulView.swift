//
//  LoginView.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//


import Foundation
import UIKit

class AzulView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .blue
            setupVisualElements()
        }
    
    //MARK: - Initialize
    
    var onGreenTap: (() -> Void)?
       
    var buttonTelaVerde = ButtonDefault(botao: "IR PARA TELA VERDE")
        
    func setupVisualElements() {
        self.addSubview(buttonTelaVerde)
        
        buttonTelaVerde.addTarget(self, action: #selector(GreenTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: topAnchor, constant: 400),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    @objc
    private func GreenTap(){
        onGreenTap?()
    }
}
