//
//  ViewController.swift
//  BasicControlsByCode
//
//  Created by Apple on 16/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var myLabel = UILabel(frame: CGRect(x: 16, y: 20, width: 288, height: 40))
        myLabel.text = "Codekul"
        myLabel.textColor = UIColor.white
        myLabel.backgroundColor = UIColor.blue
        myLabel.textAlignment = .center
        self.view.addSubview(myLabel)
        
    }
}

