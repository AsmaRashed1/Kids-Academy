//
//  AnimationViewController.swift
//  KidsApp
//
//  Created by Asma Rasheed on 02/06/1443 AH.
//
import ShimmerSwift
import UIKit

class AnimationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let shimmerView = ShimmeringView(frame: CGRect (x: 0, y: 0, width: 250, height: 50))
        view.addSubview(shimmerView)
        shimmerView.center = view.center
        
        
        let button = UIButton(frame: shimmerView.bounds)
        button.backgroundColor = .systemBlue
        button.setTitle("Hello", for: .normal)
        button.layer.cornerRadius = 12
        shimmerView.contentView = button
        
        
        
        shimmerView.isShimmering = true
//
    }
  
}
