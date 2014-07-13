//
//  SearchViewController.swift
//  Gif Me
//
//  Created by jack.crawford-brown on 7/12/14.
//  Copyright (c) 2014 JCB. All rights reserved.
//

import Foundation
import UIKit
import CoreData


class SearchViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet var searchTableView: UICollectionView
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView!) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView!,
        numberOfItemsInSection section: Int) -> Int {
            return 25
    }
    
    func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath:NSIndexPath!)->UICollectionViewCell! {
        
        let cell: GifCell = collectionView.dequeueReusableCellWithReuseIdentifier("myGif", forIndexPath: indexPath) as GifCell
        
        cell.gif.image = UIImage(named:"angrybaby.png")
        
        return cell;
    }
}

