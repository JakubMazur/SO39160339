//
//  MyViewController.swift
//  SO_39160339
//
//  Created by Jakub Mazur on 31/08/16.
//  Copyright © 2016 wingu AG. All rights reserved.
//

import UIKit

class MyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let reuseIdentifier = "myCell"
    var items = ["karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate","karate", "signup", "last", "madur", "open", "somelongword", "nice", "looooooooong", "karate", "karate", "karate"]

    override func viewDidLoad() {
        self.collectionView .registerNib(UINib (nibName: "MyCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        if let flowLayout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSizeMake(1, 1)
        }
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MyCellCollectionViewCell
        cell.titleLabel.text = self.items[indexPath.item]
        cell.backgroundColor = UIColor.clearColor()
        cell.titleLabel.preferredMaxLayoutWidth = 50

        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.item)!")
    }
    
    //That method is not needed, you can try remove it to see why I add it. It's basically add margins to collectionView.
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        let marginStaticValue : CGFloat = 50
        return UIEdgeInsetsMake(0, marginStaticValue, 0, marginStaticValue)
    }
}
