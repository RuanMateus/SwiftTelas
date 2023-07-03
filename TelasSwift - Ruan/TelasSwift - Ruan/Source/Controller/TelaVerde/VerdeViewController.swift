//
//  VerdeViewController.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

class VerdeViewController: UIViewController {
    
    var onRedTap: (() -> Void)?
    var onBlueTap: (() -> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var verdeTela: VerdeView = {
        let verdeTela = VerdeView()
        verdeTela.onRedTap = {
            self.onRedTap?()
        }
        verdeTela.onBlueTap = {
            self.onBlueTap?()
        }
        return verdeTela
    }()
    
    //cria uma variável que é do tipo LoginView
    var viewMain = VerdeView()
    
       override func loadView(){
           self.view = verdeTela
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Verde"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
