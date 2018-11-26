//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Apple on 25/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func datePicked(_ sender: UIDatePicker) {
        // Format the date
        let df = DateFormatter()
        df.dateFormat = "dd-MM-yyyy hh:mm:ss a"
        print(df.string(from: sender.date))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

