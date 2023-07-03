//
//  UIcolor+.swift
//  TelasSwift - Ruan
//
//  Created by Ruan Mateus on 03/07/23.
//

import Foundation
import UIKit

extension UIColor {
    static var viewBackGroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }
    
    static var buttonBackGroundColor: UIColor {
        UIColor(named: "buttonBackGroundColor") ?? .lightGray
    }
    
}
