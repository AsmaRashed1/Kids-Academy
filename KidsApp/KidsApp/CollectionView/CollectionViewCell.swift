//
//  CollectionViewCell.swift
//  KidsApp
//
//  Created by Asma Rasheed on 16/12/2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var Des: UILabel!
    
    func Update(Product : ProductObject) {
        self.Des.text = Product.Des
    }
    
}
