//
//  FirstViewController.swift
//  Kids Academy
//
//  Created by Asma Rasheed on 04/05/1443 AH.
//

import UIKit

class FirstViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var imgAreey = [UIImage(re:.img1), UIImage(re: .img2), UIImage(re: .img3), UIImage(re: .img4)]

    @IBOutlet weak var collectionView: UICollectionView!
    var timer = Timer()
    var counter = 0
    var str = "Kids Academy"
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        DispatchQueue.main.async {
              self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
           }
    }
    
    @objc func changeImage() {
         
        // conditional
         if counter < imgAreey.count {
              let index = IndexPath.init(item: counter, section: 0)
              self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
             counter += 1
         } else {
              counter = 0
              let index = IndexPath.init(item: counter, section: 0)
              self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
               counter = 1
           }
      }
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgAreey.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = imgAreey[indexPath.row]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

      
    }
    



