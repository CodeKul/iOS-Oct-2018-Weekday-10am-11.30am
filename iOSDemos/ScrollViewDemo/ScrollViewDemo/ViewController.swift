//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by Apple on 05/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myScrollView: UIScrollView!
    @IBOutlet var myContentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myScrollView.contentSize = myContentView.frame.size
    }
}

