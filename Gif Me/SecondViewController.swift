//
//  SecondViewController.swift
//  Gif Me
//
//  Created by jack.crawford-brown on 7/6/14.
//  Copyright (c) 2014 JCB. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet var gifCollectionNew: UICollectionView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

