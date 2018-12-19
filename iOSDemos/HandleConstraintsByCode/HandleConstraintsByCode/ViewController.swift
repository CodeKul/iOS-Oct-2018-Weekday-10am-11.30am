//
//  ViewController.swift
//  HandleConstraintsByCode
//
//  Created by Apple on 17/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leftConstraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func menuButtonClicked(_ sender: UIButton) {
        
        if leftConstraints.constant == 0 {
            leftConstraints.constant = -200
        }
        else {
            leftConstraints.constant = 0
        }
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
}

