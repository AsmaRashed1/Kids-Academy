//
//  Animls.swift
//  KidsApp
//
//  Created by Asma Rasheed on 23/12/2021.
//

import UIKit

class Animls: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var AinmlsCollection: UICollectionView!
    
    
    var img = [UIImage(named: "A1"),UIImage(named: "A2"),UIImage(named: "A3"),UIImage(named: "A4"),UIImage(named: "A5"),UIImage(named: "A6")]
    
    var name = ["Eagle","Dog","Rabbit","Horse","Cat","Deer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AinmlsCollection.delegate = self
        AinmlsCollection.dataSource = self
    }
    

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellx", for: indexPath) as! AnimlsCell
        
        cell.img.image = img[indexPath.row]
        cell.name.text = name[indexPath.row]
        
        
        return cell
    }
    
   

}
