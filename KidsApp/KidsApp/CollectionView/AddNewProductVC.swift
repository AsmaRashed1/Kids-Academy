//
//  AddNewProductVC.swift
//  KidsApp
//
//  Created by Asma Rasheed on 26/12/2021.
//

import UIKit
import Firebase
import FirebaseFirestore
class AddNewProductVC: UIViewController {

    @IBOutlet weak var Des: UITextField!
    
    @IBOutlet weak var lableDone: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func UploadData(_ sender: Any) {
            
        let GenerateID = UUID().uuidString
        let newProduct = ProductObject(ID: GenerateID, Stamp: Date().timeIntervalSince1970,Des: self.Des.text!)
        
        newProduct.Upload()
        lableDone.text = "Done Upload"
       
    }

}
