//
//  struct.swift
//  Kids Academy
//
//  Created by Asma Rasheed on 04/05/1443 AH.
//

import Foundation
import UIKit

enum ImageResource: String {
    case img1 = "img1"
    case img2 = "img2"
    case img3 = "img3"
    case img4 = "img4"
   
    
}
extension UIImage {
    
    convenience init?(re: ImageResource) {
        self.init(named: re.rawValue)
    }
    
}
