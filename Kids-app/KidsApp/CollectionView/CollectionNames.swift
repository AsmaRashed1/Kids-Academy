//
//  CollectionNames.swift
//  KidsApp
//
//  Created by Asma Rasheed on 16/12/2021.
//

import UIKit

class CollectionNames: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var CollectionView: UICollectionView!

    var des : [ProductObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionView.delegate = self
        CollectionView.dataSource = self
        getData()
    }
    
    
    
    func getData() {
        ProductApi.GetAllProducts { (product : ProductObject) in
            self.des.append (product)
            self.CollectionView.reloadData()
        }
    }
    
    
    // Func Info of Arayy
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return des.count
    }
    
    
    // Func Info Cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        
        // For TextView Descrpition
        cell.Update(Product: des[indexPath.row])
        
        return cell
    }


    
}
