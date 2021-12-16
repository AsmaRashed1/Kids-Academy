//
//  RegisterViewController.swift
//  Kids Academy
//
//  Created by Asma Rasheed on 04/05/1443 AH.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SignInViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
  checkUserInfo()
    }
    
    @IBAction func signInbtn(_ sender: Any) {
    validateFileds()
    }
    
    @IBAction func createAccounit(_ sender: UIButton) {
        performSegue(withIdentifier: "signUP", sender: nil)
}

       
    func validateFileds(){
        if email.text?.isEmpty == true{
            print("No Email Text")
            return
        }
        if password.text?.isEmpty == true{
            print("No Password Text")
            return
        }
        login()
        
        }
    func login(){
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { [weak self]authResult, err in
            guard let strongSelf = self else {return}
            if let err = err {
                let alert = UIAlertController(title: "Error", message: "Sorry, Couldn't find your Account" , preferredStyle: .alert)
                     alert.addAction(UIAlertAction(title: "OK" , style: .default , handler: nil))
                     self?.present(alert, animated : true)
                    }else {
                     self?.performSegue(withIdentifier: "toMainHome", sender: nil)
              
     }
            self!.checkUserInfo()
   }
 }
    
    func checkUserInfo(){
        if Auth.auth().currentUser != nil {
            print(Auth.auth().currentUser?.uid)

            
            
    }
  }
}

