//
//  Extension-textField.swift
//  Test
//
//  Created by Oscar Ivan Pérez Salazar on 29/05/23.
//

import Foundation
import UIKit

extension UITextField {
    
    func applyCustomStyle() {
        layer.cornerRadius = 10
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 2
    }
    
}
