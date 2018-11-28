//
//  MyCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Apple on 28/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLabel: UILabel!
    func setData (str: String) {
        myLabel.text = str
    }
}
