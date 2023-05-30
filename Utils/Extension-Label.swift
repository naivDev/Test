//
//  Extension-Label.swift
//  Test
//
//  Created by Oscar Ivan Pérez Salazar on 29/05/23.
//
 
import UIKit
import Foundation

extension UILabel {
    
    func applyCustomStyle() {
        layer.cornerRadius = 10
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 10
        
       textColor = UIColor.black
       font = UIFont(name: "Bold", size: 22)
       backgroundColor = UIColor.gray.withAlphaComponent(0.2)
    }
    
}
