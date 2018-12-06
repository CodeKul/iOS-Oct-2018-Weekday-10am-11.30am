//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Apple on 06/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(myWebView.estimatedProgress)
            if progressView.progress == 1 {
                progressView.isHidden = true
            }
            else {
                progressView.isHidden = false
                    urlTextField.text = myWebView.url?.relativeString
            }
        }
    }
    
    
    @IBAction func goButtonClicked(_ sender: UIButton) {
        loadWebView()
    }
    
    func loadWebView() {
        let url = URL(string: urlTextField.text!)
        let req = URLRequest(url: url!)
        myWebView.load(req)
        urlTextField.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loadWebView()
        return true
    }
    
}

