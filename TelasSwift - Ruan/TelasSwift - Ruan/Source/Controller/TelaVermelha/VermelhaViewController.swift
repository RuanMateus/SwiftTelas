//
//  VermelhaViewController.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

class VermelhaViewController: UIViewController {
    
    var onGreenTap: (() -> Void)?
    var onBlueTap: (() -> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var vermelhaTela: VermelhaView = {
        let vermelhaTela = VermelhaView()
        vermelhaTela.onGreenTap = {
            self.onGreenTap?()
        }
        vermelhaTela.onBlueTap = {
            self.onBlueTap?()
        }
        return vermelhaTela
    }()

    //cria uma variável que é do tipo LoginView
    var viewMain = VermelhaView()
    
       override func loadView(){
           self.view = vermelhaTela
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Vermelha"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
