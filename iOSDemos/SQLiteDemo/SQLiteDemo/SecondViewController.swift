//
//  SecondViewController.swift
//  SQLiteDemo
//
//  Created by Apple on 19/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var rnoTxt: UITextField!
    @IBOutlet var nameTxt: UITextField!
    @IBOutlet var marksTxt: UITextField!

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        let isinserted = appDelegate.executeQuery("INSERT INTO Student VALUES(\(rnoTxt.text!), '\(nameTxt.text!)', \(marksTxt.text!))")
        if isinserted {
            print("Record inserted")
        }
        else {
            print("Error while inserting a record")
        }
    }

    @IBAction func closeButtonClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
