//
//  ViewController.swift
//  PhotoApp
//
//  Created by LIUNAN YIN on 2018-10-31.
//  Copyright © 2018 LIUNAN YIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
   

    @IBOutlet weak var collectionview: UICollectionView!
    
    let reuseIdentifier = "cell"
    var array = [Photo]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        
        cell.myImage.image = array[indexPath.item].image
        
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.cornerRadius = 8
        cell.layer.borderWidth = 0
        cell.layer.backgroundColor = UIColor.white.cgColor
        cell.myImage.layer.borderColor = UIColor.white.cgColor
        cell.myImage.layer.borderWidth = 1
        cell.myImage.layer.cornerRadius = 8

        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.dataSource = self
        collectionview.delegate = self
        
        array.append(Photo(name: "sunrise", date: 20161007, image: #imageLiteral(resourceName: "sunrise")))
        array.append(Photo(name: "sunset", date: 20160819, image: #imageLiteral(resourceName: "sunset")))
        array.append(Photo(name: "sea", date: 20151127, image: #imageLiteral(resourceName: "sea")))
        array.append(Photo(name: "mountain", date: 20161007, image: #imageLiteral(resourceName: "mountain")))
        array.append(Photo(name: "lake", date: 20161007, image: #imageLiteral(resourceName: "lake")))
        array.append(Photo(name: "island", date: 20161007, image: #imageLiteral(resourceName: "island")))
        array.append(Photo(name: "flower", date: 20161007, image: #imageLiteral(resourceName: "flower")))
        array.append(Photo(name: "blossom", date: 20161007, image: #imageLiteral(resourceName: "blossom")))
        array.append(Photo(name: "beach", date: 20161007, image: #imageLiteral(resourceName: "beach")))
        array.append(Photo(name: "tree", date: 20161007, image: #imageLiteral(resourceName: "tree")))
    }


}

