//
//  ViewController.swift
//  TKCollection View
//
//  Created by Tushar Kolhe on 02/08/18.
//  Copyright © 2018 Tushar Kolhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet var collView: UICollectionView!
    
    
    var imgArr: [UIImage] = [
        UIImage(named: "emoji.png")!,
        UIImage(named: "emoji.png")!,
        UIImage(named: "emoji.png")!,
        UIImage(named: "emoji.png")!
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collView.delegate = self
        collView.dataSource = self
        
//        var myImage = UIImage(named: "emoji")
//        var imgArr = [myImage,myImage,myImage,myImage]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


     func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // 1
        // Return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 2
        // Return the number of items in the section
        return imgArr.count
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label.text = "hiii"
        cell.imageView.image = imgArr[indexPath.row]

        return cell
    }
}

