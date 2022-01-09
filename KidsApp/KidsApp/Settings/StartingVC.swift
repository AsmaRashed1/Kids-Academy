//
//  StartingVC.swift
//  KidsApp
//
//  Created by Asma Rasheed on 16/12/2021.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseFirestore

class StartingVC: UIViewController {

    
    
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        Admin.isHidden = true
//
//    }
//
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        XAdmin.isAdmin {
//            DispatchQueue.main.sync {
//                self.Admin.isHidden = false
//            }
//        }
//    }
//
    
    @IBAction func darckMode(_ sender: Any) {
    }
    
    @IBAction func SignOut(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            self.dismiss(animated: true, completion: nil)
        }
        catch let signOutError as NSError {
            print ("Error signin out : %@" , signOutError)
        }
    }
//        try? Auth.auth().signOut()
//        dismiss(animated: true, completion: nil)
//    }
    
}
