//
//  AddNewProductVC.swift
//  KidsApp
//
//  Created by Asma Rasheed on 26/12/2021.
//

import UIKit
import Firebase
import FirebaseFirestore
import BSImagePicker
import Photos

class AddNewProductVC: UIViewController {

    @IBOutlet weak var des: UITextField!
    
    @IBOutlet weak var lableDone: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    let BSVC = ImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BSVC.maxNumberOfSelections = 1
    }
    
    @IBAction func uploadImage(_ sender: UIButton) {
        
        

        presentImagePicker(BSVC, select: { (PhAsset :PHAsset) in
            // User selected an asset. Do something with it. Perhaps begin processing/upload?
        }, deselect: { (PhAsset : PHAsset) in
            // User deselected an asset. Cancel whatever you did when asset was selected.
        }, cancel: { (PhAsset :[PHAsset]) in
            // User canceled selection.
        }, finish: { (PhAsset :[PHAsset]) in
            
            
            if PhAsset.count > 0 {
             var img = PhAsset[0]
                
                self.imageView.image = self.getUIImage(asset: img)
                
            }
            
        }, completion: nil)
    }
    
    @IBAction func UploadData(_ sender: Any) {
            
        let GenerateID = UUID().uuidString
        let newProduct = ProductObject(ID: GenerateID, Stamp: Date().timeIntervalSince1970,Des: self.des.text!)
        
        newProduct.Upload()
        lableDone.text = "Done Upload"
        
        
    }
    

    func getUIImage(asset: PHAsset) -> UIImage? {

        var img: UIImage?
        let manager = PHImageManager.default()
        let options = PHImageRequestOptions()
        options.version = .original
        options.isSynchronous = true
        manager.requestImageDataAndOrientation(for: asset, options: options){ (data, _, _, _) in

            if let data = data {
                img = UIImage(data: data)
            }
        }
        return img
    }

}
