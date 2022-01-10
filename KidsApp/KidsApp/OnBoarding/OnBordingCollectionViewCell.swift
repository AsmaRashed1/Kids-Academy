//
//  OnBordingCollectionViewCell.swift
//  KidsApp
//
//  Created by Asma Rasheed on 06/06/1443 AH.
//

import UIKit

class OnBordingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnBordingCollectionViewCell.self)

 
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}
