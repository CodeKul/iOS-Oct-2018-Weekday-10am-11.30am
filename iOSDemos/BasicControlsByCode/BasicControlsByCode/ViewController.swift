//
//  ViewController.swift
//  BasicControlsByCode
//
//  Created by Apple on 16/11/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var myLabel: UILabel!
    var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel = UILabel(frame: CGRect(x: 16, y: 20, width: 288, height: 40))
        myLabel.text = "Codekul"
        myLabel.textColor = UIColor.white
        myLabel.backgroundColor = UIColor.blue
        myLabel.textAlignment = .center
        self.view.addSubview(myLabel)
        
        textField = UITextField(frame: CGRect(x: 16, y: myLabel.frame.origin.y + myLabel.frame.height + 10, width: myLabel.frame.width, height: myLabel.frame.height))
        textField.placeholder = "Name"
        textField.delegate = self
        self.view.addSubview(textField)
        
        let button = UIButton(frame: CGRect(x: 110, y: textField.frame.origin.y + textField.frame.height + 10, width: 100, height: 40))
        button.setTitle("GO", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: .highlighted)
        button.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        
        button.addTarget(self, action: #selector(goButtonClicked), for: .touchUpInside)
        self.view.addSubview(button)
        
        //        Task: Write code for creating Segmented control, Slider, Switch        
    }
    
    @objc func goButtonClicked(_ sender: UIButton) {
        myLabel.text = textField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return textField.resignFirstResponder()
    }
    
}

