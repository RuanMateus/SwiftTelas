//
//  VermelhaCoordinator.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

class VermelhaCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        //chama a login
        let viewController = VermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onGreenTap = {
            self.gotoVerde()
        }
        
        viewController.onBlueTap = {
            self.gotoAzul()
            }
    }
    
    func gotoVerde () {
        self.navigationController.popViewController(animated: true)
        let coordinator = VerdeCoordinator(navigationController: navigationController)
    }
    
    func gotoAzul () {
        let coordinator = AzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}

