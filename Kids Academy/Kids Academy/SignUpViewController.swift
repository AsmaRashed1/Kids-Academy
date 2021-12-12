//
//  SignUpViewController.swift
//  Kids Academy
//
//  Created by Asma Rasheed on 04/05/1443 AH.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SignUpViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        if email.text? .isEmpty == true {
            print("No text in email field")
            return
        }
        if password.text?.isEmpty == true {
            print("No text in password field")
            return
        }
        
        signUP()
        self.performSegue(withIdentifier: "mainHome", sender: nil)
    }

        func signUP () {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (authResult, error) in
            guard let user = authResult? .user, error == nil else {
                print("Error\(String(describing: error?.localizedDescription))")
                return
            }
            UserApi.addUser(name: "", uid: authResult?.user.uid ?? "", phone: self.userName.text ?? "", email: self.email.text ?? "", completion: { b in
                
            })
            
        }
    }
}
    

