//
//  FourthViewController.swift
//  NavigationControllerDemo
//
//  Created by Apple on 04/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }
        
    @IBAction func goToFVC(_ sender: UIButton) {
        self.navigationController?.isNavigationBarHidden = false
        let vc = self.navigationController?.viewControllers[1]
        self.navigationController?.popToViewController(vc!, animated: true)
    }
}
