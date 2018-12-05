//
//  SecondViewController.swift
//  PassingDataFromVCtoVC
//
//  Created by Apple on 05/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var myData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = myData ?? ""
    }
}
