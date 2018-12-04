//
//  ThirdViewController.swift
//  NavigationControllerDemo
//
//  Created by Apple on 04/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
