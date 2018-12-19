//
//  ViewController.swift
//  PListDemo
//
//  Created by Apple on 17/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/myFile.plist"
        
        print(filePath)
        
        /* Write an array*/
//        let arrData = NSArray(array: ["Red", "Green", "Blue", "Yellow", "Gray"])
//        arrData.write(toFile: filePath, atomically: true)
        
        /* Read an array*/
//        let arrData = NSArray(contentsOfFile: filePath)
//        print(arrData!)
        
        /* Write a disctionary*/
//        let dictData = NSDictionary(dictionary: ["Name": "Sachin", "Team": "MI", "Score" : "1000"])
//        dictData.write(toFile: filePath, atomically: true)
        
        /* Read a disctionary*/
        let dictData = NSDictionary(contentsOfFile: filePath)
        print(dictData!)

        print(dictData!["Name"]!)

    }
}

