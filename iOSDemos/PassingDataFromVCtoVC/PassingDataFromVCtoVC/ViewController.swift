//
//  ViewController.swift
//  PassingDataFromVCtoVC
//
//  Created by Apple on 05/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.myData = self.textfield.text
        self.present(vc, animated: true, completion: nil)
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if segue.identifier == "FVCToSVC" {
//            let vc = segue.destination as! SecondViewController
//            vc.myData = self.textfield.text
//        }
//    }
    
}

