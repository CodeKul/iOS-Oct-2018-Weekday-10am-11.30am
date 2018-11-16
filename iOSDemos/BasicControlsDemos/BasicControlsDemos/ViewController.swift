//
//  ViewController.swift
//  BasicControlsDemos
//
//  Created by Apple on 15/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goButtonClicked(_ sender: UIButton) {
        myLabel.text = myTextField.text
    }

    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            myLabel.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            myLabel.backgroundColor = UIColor.green
        }
        else {
            myLabel.backgroundColor = UIColor.blue
        }
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        myLabel.text = "\(sender.value)"
    }
    
    @IBAction func switchValueChnaged(_ sender: UISwitch) {
        mySlider.isUserInteractionEnabled = sender.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}

