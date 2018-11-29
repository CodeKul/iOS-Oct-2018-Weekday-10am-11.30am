//
//  ViewController.swift
//  NavigationSegues
//
//  Created by Apple on 29/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController : viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController : viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController : viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController : viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController : viewDidDisappear")
    }
}


