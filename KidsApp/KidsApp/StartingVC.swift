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
                // no user
            } else {
                self.performSegue(withIdentifier: "App", sender: nil)
                // user is here
            }
            
        }
        
    }
    
    
    @IBAction func close(_ sender: Any) {
        let exitAppAlert = UIAlertController(title: "Important Message",
                                             message: "The application needs to be closed and then opened again in order to retrieve the data",
                                             preferredStyle: .alert)
        let resetApp = UIAlertAction(title: "Close", style: .destructive) {
            (alert) -> Void in
            // home button pressed programmatically - to thorw app to background
            UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
            // terminaing app in background
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                exit(EXIT_SUCCESS)
            })
        }
        let laterAction = UIAlertAction(title: "Later", style: .cancel) {
            (alert) -> Void in
            self.dismiss(animated: true, completion: nil)
        }
        exitAppAlert.addAction(resetApp)
        exitAppAlert.addAction(laterAction)
        present(exitAppAlert, animated: true, completion: nil)
    }

}
