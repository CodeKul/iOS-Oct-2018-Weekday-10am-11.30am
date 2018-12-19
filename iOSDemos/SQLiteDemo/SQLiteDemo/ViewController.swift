//
//  ViewController.swift
//  SQLiteDemo
//
//  Created by Apple on 19/12/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var records = Array<Dictionary<String,Any>>()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    @IBOutlet var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        records = appDelegate.selectQuery("SELECT * FROM Student")
        myTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return records.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = (records[indexPath.row]["name"] as! String)
        cell?.detailTextLabel?.text = "\(records[indexPath.row]["marks"] ?? "")"
        
        return cell!
    }
    
}

