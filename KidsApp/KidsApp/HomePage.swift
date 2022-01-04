//
//  HomePage.swift
//  KidsApp
//
//  Created by Asma Rasheed on 26/12/2021.
//

import UIKit
import Firebase
class HomePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func singOut(_ sender: Any) {
        try? Auth.auth().signOut()
        dismiss(animated: true, completion: nil)
    }
    
  

}
