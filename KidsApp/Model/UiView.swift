//
//  File.swift
//  KidsApp
//
//  Created by Asma Rasheed on 06/06/1443 AH.
//

import UIKit


extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
