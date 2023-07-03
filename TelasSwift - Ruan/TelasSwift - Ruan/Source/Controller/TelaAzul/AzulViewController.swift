//
//  AzulViewController.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

class AzulViewController: UIViewController {
    
    //:MARK: - Clousures
    var onGreenTap: (() -> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var azulTela: AzulView = {
        
        let azulTela = AzulView()
        azulTela.onGreenTap = {
            self.onGreenTap?()
        }
        return azulTela
    }()
    
       override func loadView(){
           self.view = azulTela
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Azul"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
