//
//  StartingVC.swift
//  KidsApp
//
//  Created by Asma Rasheed on 16/12/2021.
//

import UIKit
import Firebase
import FirebaseFirestore
class StartingVC: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        Auth.auth().addStateDidChangeListener { (auth, user) in
            
            if user == nil {
                self.performSegue(withIdentifier: "Auth", sender: nil)
               
            } else {
                self.performSegue(withIdentifier: "App", sender: nil)
                
            }
            
        }
        
    }
    

}
