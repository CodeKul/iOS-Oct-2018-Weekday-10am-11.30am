//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Apple on 17/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
//        ud.set("My Value in UserDefaults", forKey: "MyData")
        
        let data = ud.value(forKey: "MyData") as! String
        print(data)
        
    }
}

