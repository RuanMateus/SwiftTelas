//
//  VerdeCordinator.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

class VerdeCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        //chama a login
        let viewController = VerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onRedTap = {
            self.gotoVermelho()
        }
        
        viewController.onBlueTap = {
            self.gotoAzul()
            }
    }
    
    func gotoVermelho () {
        let coordinator = VermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func gotoAzul () {
        self.navigationController.popViewController(animated: true)
        let coordinator = AzulCoordinator(navigationController: navigationController)
        
    }
}

