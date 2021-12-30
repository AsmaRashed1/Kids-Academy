//
//  ProductObject.swift
//  KidsApp
//
//  Created by Asma Rasheed on 25/12/2021.
//

import Foundation
import FirebaseFirestore

class ProductObject {
    
    var ID : String?
    var Stamp : TimeInterval?
    var Des : String?
    var imageURL : String?
    
    init(ID : String, Stamp : TimeInterval, Des : String , imageURL :String ){
        self.ID = ID
        self.Stamp = Stamp
        self.Des = Des
        self.imageURL = imageURL
    }
    
    init(Dictionary : [String : AnyObject]) {
        self.ID = Dictionary["ID"] as? String
        self.Stamp = Dictionary["Stamp"] as? TimeInterval
        self.Des = Dictionary["Des"] as? String
        self.imageURL = Dictionary["imageURL"] as? String
    }
    
    func MakeDictionary()->[String : AnyObject] {
        var new : [String : AnyObject] = [:]
        new["ID"] = self.ID as AnyObject
        new["Stamp"] = self.Stamp as AnyObject
        new["Des"] = self.Des as AnyObject
        new["imageURL"] = self.imageURL as AnyObject
        return new
    }
    
    func Upload(){
        guard let id = self.ID else { return }
        Firestore.firestore().collection("Products").document(id).setData(MakeDictionary())
    }
    
    func Remove(){
        guard let id = self.ID else { return }
        Firestore.firestore().collection("Products").document(id).delete()
    }
    
    
}


class ProductApi {

    static func GetProduct(ID : String, completion : @escaping (_ Product : ProductObject)->()){
        Firestore.firestore().collection("Products").document(ID).addSnapshotListener { (Snapshot : DocumentSnapshot?, Error : Error?) in
            if let data = Snapshot?.data() as [String : AnyObject]? {
                let New = ProductObject(Dictionary: data)
                completion(New)
            }
        }
    }
    
    static func GetAllProducts(completion : @escaping (_ Product : ProductObject)->()){
        Firestore.firestore().collection("Products").getDocuments { (Snapshot, error) in
            if error != nil { print("Error") ; return }
            guard let documents = Snapshot?.documents else { return }
            for P in documents {
                if let data = P.data() as [String : AnyObject]? {
                    let new = ProductObject(Dictionary: data)
                    completion(new)
                }
            }
        }

    }
    
}


